package it.ai.rooms;
import it.ai.engine.Room;
import it.ai.engine.Parser;
import it.ai.engine.Log;
import it.ai.engine.Vars;
import src.it.ai.engine.Button1;
import src.it.ai.engine.Door;
import src.it.ai.engine.Interactable;

/**
 * ...
 * @author AI
 */
class Room1 implements Room {
	private var _lastCommand:String;
	private var _interactables:Array<Interactable>;
	private var _button1:Button1;
	private var _door1:Door;
	public function new() 
	{
		_button1 = new Button1();
		_door1 = new Door();
	}
	
	public function onEnterRoom():Void 
	{
		Log.print(description);
		for (i in _interactables){
			Log.print(i.getDescription());
		}
	}
	
	public function onExitRoom():Void 
	{
		
	}
	
	public function onCommand(s:String)  {
		_lastCommand = s;
		for (i in _interactables){
			if (p(i.name)){
				i.tryToInteract(s);
			}
		}
		
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