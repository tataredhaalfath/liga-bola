<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Managers extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $table = 'managers';

    protected $fillable = [
        'clubs_id',
        'name',
        'old',
        'nationality',
        'created_at',
        'updated_at'
    ];

    public function clubs()
    {
        return $this->belongsTo(Clubs::class, 'clubs_id', 'id');
    }
}
