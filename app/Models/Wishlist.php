<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Wishlist extends Model
{
    use HasFactory;

    protected $table = "wishlists";
    protected $fillable = [
        'user_id',
        'produit_id',
    ];

    public function produit()
    {
        return $this->belongsTo(Produit::class, 'produit_id');
    }
    
}
