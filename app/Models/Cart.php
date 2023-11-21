<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    use HasFactory;

    public function plant()
    {
        return $this->hasOne(Plant::class, 'pid', 'pid');
    }
    public function coupon()
    {
        return $this->hasMany(Coupon::class, 'code', 'coupon_code');
    }
    public function firstBuy()
    {
        return $this->hasMany(FirstBuy::class, 'uid', 'uid')->where('status', '1');
    }
    public function img()
    {
        return $this->hasOne(PlantImg::class, 'pid', 'pid')->where('type', 'md');
    }
}
