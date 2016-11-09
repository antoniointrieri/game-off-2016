package src.it.ai.engine;

/**
 * ...
 * @author 
 */
class Door implements Interactable 
{

	public function new() 
	{
		
	}
	
	
	/* INTERFACE src.it.ai.engine.Interactable */
	
	public var name:String;
	
	public function tryToInteract(command:String):Void {
		if (p("open|unlock")){
			if (isOpen()) {
				Log.print("The door is already open");
			} else {
				Log.print("The door is closed and you can't unlock it");
			}
		}
	}
	
	private function getDescription():String{
		if (isOpen()){
			Log.print("There's an open door leading to the north");
		} else {
			Log.print("There's a closed door on the north side of the room");
		}
	}
	
	private function getAccurateDescription(verb:String):Void{
		switch (verb){
			case "look":
				if (isOpen()) {
					Log.print("There's only darkness beyond the door..");
				} else {
					Log.print("The door looks you back");
				}
			case "exhaminate":
				if (isOpen()) {
					Log.print("Looks like the door the door is linked to some other object");
				} else {
					Log.print("The door seems to be of an ancient piece of steel of the 34° century");
				}
			case "analyze":
				if (isOpen()) {
					Log.print("The 34% of living being can pass through the door");
				} else {
					Log.print("2,00mx3,50m");
				}
			case "explore":
				if (isOpen()){
					Log.print("The door has retracted into the ceiling");
				} else {
					Log.print("The door is closed and it seems like it can't be opened from here");
				}
		}
	}
	
	private function isOpen():Bool{
		return World.getRoom("1").getInteractable("button-1").isSet("pressed"));
	}
	
}