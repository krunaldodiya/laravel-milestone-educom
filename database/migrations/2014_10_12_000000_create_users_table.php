<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name')->nullable();
            $table->string('mobile')->nullable()->unique();
            $table->string('imei')->nullable();

            $table->string('email')->unique()->nullable();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password')->nullable();

            $table->string('dob')->default("01-01-1990");
            $table->enum('gender', ['Male', 'Female'])->default('Male');
            $table->string('avatar')->nullable();

            $table->string("school")->nullable();
            $table->string('education')->nullable();

            $table->enum('account_status', ["Approved", "Rejected", "Pending"])->default("Approved");
            $table->boolean('status')->default(false);

            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
