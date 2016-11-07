package it.ai;

import flash.text.TextField;
import flash.text.TextFieldType;
import flash.events.KeyboardEvent;
import flash.ui.Keyboard;
import openfl.display.Sprite;
import openfl.Lib;
/**
 * ...
 * @author AI
 */
class Main extends Sprite 
{

	public function new() 
	{
		super();
		
		// Assets:
		// openfl.Assets.getBitmapData("img/assetname.jpg");
		var ti:TextField = new TextField();
		ti.type = TextFieldType.INPUT;
		ti.addEventListener(KeyboardEvent.KEY_UP, function(ke:KeyboardEvent):Void{
			if (ke.keyCode == Keyboard.ENTER){
				onCommand(ti.text);
				ti.text = "";
			}
		});
		addChild(ti);
	}
	
	private function onCommand(s:String):Void{
		trace("Entered command: "+s);
	}

	
}
