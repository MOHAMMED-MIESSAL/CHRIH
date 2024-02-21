<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Commande extends Model
{
    protected $fillable = [
        'produit_id',
        'user_id',
        'qte',
        'numero_commande',
    ];
    public function produit(){
        return $this->belongsTo(Produit::class);
    }
}
