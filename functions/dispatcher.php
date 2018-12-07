<?php
class dispatcher{

	public static function dispatch($unMenuP){
		$unMenuP = "controler" . ucfirst($unMenuP) ;
		$unMenuP .= ".php";
		$unMenuP = "controlers/" . $unMenuP;
		return $unMenuP ;
	}
}
