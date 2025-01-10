<?php  

class Comande {
 private string $total ;
 private string $status ;
 private date $create_at ;

 function __construct($total,$status,$create_at){
    $this->total=$total;
    $this->status=$status;
    $this->create_at=$create_at;
 }

public static function modifierStatus(){
    
}



}



?>