<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ModelWebsiteSetting extends Model
{
    use HasFactory;

    protected $table ='tb_website_setting';

    protected $fillable =[
        'nama_website',
    ];
}
