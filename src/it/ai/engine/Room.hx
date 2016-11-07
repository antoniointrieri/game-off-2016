package it.ai.engine;

/**
 * ...
 * @author AI
 */
interface Room
{
	public function onEnterRoom():Void;
	
	public function onExitRoom():Void;
	
	public function onCommand(s:String);
}