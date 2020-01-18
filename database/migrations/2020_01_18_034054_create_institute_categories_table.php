<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInstituteCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('institute_categories', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->bigInteger("institute_id")->unsigned();
            $table->foreign('institute_id')->references('id')->on('institutes')
                ->onUpdate('cascade')->onDelete('cascade');

            $table->bigInteger("category_id")->unsigned();
            $table->foreign('category_id')->references('id')->on('categories')
                ->onUpdate('cascade')->onDelete('cascade');

            $table->timestamp("expires_at");
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
        Schema::dropIfExists('institute_categories');
    }
}
