package src.it.ai.engine;

/**
 * ...
 * @author 
 */
class Button1 implements Interactable
{
	
	public function new() 
	{
		name = "button-1";
		open = false;
	}
	
	
	public var name:String;
	public var pressed:Bool;
	
	public function tryToInteract(command:String):Void {
		if (p("press|touch")){
			if (pressed) {
				Log.print("The button is already activated");
			} else {
				Log.print("The button has been activated");
			}
		}
	}
	
	private function getDescription():String{
		if (pressed){
			Log.print("There's a pressed button near the mighty Dragon....");
		} else {
			Log.print("There's a button near the mighty Dragon");
		}
	}
	
	
}