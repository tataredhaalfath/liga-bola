<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Stadiums extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $table = 'stadiums';

    protected $fillable = [
        'name',
        'capacity',
        'address',
        'created_at',
        'deleted_at'
    ];

    public function clubs()
    {
        return $this->hasOne(Clubs::class, 'stadiums_id', 'id');
    }
}
