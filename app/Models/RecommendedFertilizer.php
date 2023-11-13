<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RecommendedFertilizer extends Model
{
    use HasFactory;

    public function fertilizer()
    {
        return   $this->hasOne(Plant::class, 'pid', 'fertilizer_id');
    }
    public function imglg()
    {
        return $this->hasMany(PlantImg::class, 'pid', 'fertilizer_id')->orderBy('slno')->where('type', 'lg');
    }
}
