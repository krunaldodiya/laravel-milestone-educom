<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Tymon\JWTAuth\Contracts\JWTSubject;

class Institute extends Model implements JWTSubject
{
    protected $guarded = [];

    protected $dates = [
        'created_at', 'updated_at',
    ];

    public function students()
    {
        return $this->hasMany(InstituteStudent::class);
    }

    public function categories()
    {
        return $this->hasMany(InstituteCategory::class);
    }

    /**
     * Get the identifier that will be stored in the subject claim of the JWT.
     *
     * @return mixed
     */
    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    /**
     * Return a key value array, containing any custom claims to be added to the JWT.
     *
     * @return array
     */
    public function getJWTCustomClaims()
    {
        return [];
    }
}
