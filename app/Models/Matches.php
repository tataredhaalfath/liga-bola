<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Matches extends Model
{
    use HasFactory;

    use SoftDeletes;

    protected $table = 'matches';
    protected $fillable = [
        'clubs_id',
        'rivals_id',
        'schedule',
        'created_at',
        'updated_at'
    ];

    public function match()
    {
        return $this->belongsTo(Clubs::class, 'clubs_id', 'id');
    }

    public function rivals()
    {
        return $this->belongsTo(Clubs::class, 'rivals_id', 'id');
    }
}
