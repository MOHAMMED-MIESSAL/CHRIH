<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Produit extends Model
{
    public function users_panier(){
        return $this->BelongsToMany(User::class,'carts'); 
    }
    public function users_commande(){
        return $this->BelongsToMany(User::class,'commandes'); 
    }
 
}
