<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Players extends Model
{
    use HasFactory;

    use SoftDeletes;

    protected $table = 'players';
    protected $fillable = [
        'clubs_Id',
        'name',
        'height',
        'position',
        'created_at',
        'updated_at'
    ];

    public function clubs()
    {
        return $this->belongsTo(Clubs::class, 'clubs_id', 'id');
    }
}
