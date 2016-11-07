package it.ai.engine;

/**
 * ...
 * @author AI
 */
class Parser
{
	//restituisce true se tutte le stringhe presenti in stringsToMatch sono presenti in command
	//una stringa può contenere | per indicare sinonimi da usare in maniera intercambiabile
	//es: eval(input,["open|unlock","door"])
	public static function eval(command:String, stringsToMatch:Array<String>):Bool{
		var matched:Int = stringsToMatch.length;
		if (matched == 0){
			return false; //la sequenza vuota di stringhe fallisce sempre
		}
		//cerca i sinonimi forniti se sono presenti nel comando
		for (m in stringsToMatch){
			if (matchSynonim(command,m))){
				matched--;
			}
		}
		//se sono stati matchati tutti è ok
		return matched == 0;
	}
	
	private static function matchSynonim(command:String, syn:String):Bool{
		var toMatch:String = command.toLowerCase();
		var candidate:Array<String> = syn.toLowerCase().split("|");
		for (c in candidate){
			if (toMatch.indexOf(c) > 0){
				return true; //basta trovarne uno che matchi
			}
		}
		return false;
	}
	
}