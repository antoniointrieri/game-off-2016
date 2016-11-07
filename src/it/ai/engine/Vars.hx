package it.ai.engine;

/**
 * ...
 * @author AI
 */
class Vars {
	private static var _map:Map<String,Bool> = new Map<String,Bool>();
	public static function set(key:String):Void{
		_map.set(key, true);
	}
	
	public static function unset(key:String):Void{
		_map.remove(key);
	}
	
	public static function get(key:String):String{
		return _map.get(key);
	}
	
	public static function has(key:String):Bool{
		return _map.exists(key);
	}

}