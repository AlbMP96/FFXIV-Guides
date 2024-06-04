<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FFClass extends Model
{
    use HasFactory;

    protected $table = 'classes';

    public function guide()
    {
        return $this->hasMany(Guide::class);
    }
}
