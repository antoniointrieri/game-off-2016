package src.it.ai.engine;
import it.ai.engine.Room;
import it.ai.rooms.Room1;

/**
 * ...
 * @author 
 */
class World 
{

	private var  _rooms:Array<Room> = new Array<Room>();
	public function new() 
	{
		_rooms.push(new Room1());
	}
	
}