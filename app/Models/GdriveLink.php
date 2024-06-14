<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class GdriveLink extends Model
{
    protected $table = 'gdrive_links';
    protected $fillable = ['link'];
}