<?php


class Produit {
 private string $name ;
 private string $description ;
 private float $prix;
private int $stock ;
private array $categories ;

function __construct($name,$description,$prix,$stock,$categories){
 $this->name=$name;
 $this->description=$description; 
 $this->prix=$prix;
 $this->stock=$stock;
 $this->categories=$categories;
}

}

?>