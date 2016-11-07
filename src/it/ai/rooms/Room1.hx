package it.ai.rooms;
import it.ai.engine.Room;
import it.ai.engine.Parser;
import it.ai.engine.Log;
import it.ai.engine.Vars;

/**
 * ...
 * @author AI
 */
class Room1 implements Room {
	private var _lastCommand:String;

	public function new() 
	{
		
	}
	
	public function onEnterRoom():Void 
	{
		
	}
	
	public function onExitRoom():Void 
	{
		
	}
	
	public function onCommand(s:String)  {
		_lastCommand = s;
		if (p("open|unlock door")){
			if (Vars.has("open-door")){
				Log.print("The door is already open");
			} else {
				Log.print("You open the door");
				Vars.set("open-door");
			}
		} else if (p("close|lock door")){
			if (Vars.has("open-door")){
				Log.print("You close the door");
				Vars.unset("open-door");
			} else {
				Log.print("The door is already closed");
			}
		}
	}
	
	private function p(match:String):Bool{
		return Parser.eval(_lastCommand, match.split(" "));
	}
}