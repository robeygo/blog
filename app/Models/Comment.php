<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;
    protected $fillable=[
        'post_id',
        'user_id',
        'comment',
        'created_at',
        'updated_at'
    ];

    public function post(){
        return $this->belongsTo('App\Models\Comment','post_id','id');
    }
    public function replays(){
        return $this->hasMany('App\Models\Comment','replay_id','id');
}
    public function rereplays(){
        return $this->hasMany('App\Models\Comment','replay_id','id');
    }
}
