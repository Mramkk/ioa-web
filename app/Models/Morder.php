<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Morder extends Model
{
    use HasFactory;

    public function items()
    {
        return $this->hasMany(OrderedItem::class,  'orderid', 'orderid');
    }
    public function firstBuy()
    {
        return $this->hasMany(FirstBuy::class,  'id', 'first_buy_id');
    }
    public function coupon()
    {
        return $this->hasMany(Coupon::class,  'id', 'coupon_id');
    }
    public function referral()
    {
        return $this->hasMany(ReferralCommission::class,  'id', 'referral_id');
    }
    public function address()
    {
        return $this->hasOne(Address::class,  'id', 'address_id');
    }
}
