<?php 

abstract class User {

    protected string $name;
    protected string $email;
    protected string $role ;


function __construct($name,$email,$role){
    $this->name=$name;
    $this->email=$email;
    $this->role=$role;

}


abstract public static function seConecter();

abstract public static function seDeconnecter();

}




?>