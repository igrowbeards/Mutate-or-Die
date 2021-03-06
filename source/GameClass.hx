package;

import flash.Lib;
import flixel.FlxGame;

class GameClass extends FlxGame
{
	public function new()
	{
		var stageWidth:Int = Lib.current.stage.stageWidth;
		var stageHeight:Int = Lib.current.stage.stageHeight;

		var ratioX:Float = stageWidth / 400;
		var ratioY:Float = stageHeight / 400;
		var ratio:Float = Math.min(ratioX, ratioY) * 4;

		var fps:Int = 60;

		super(Math.ceil(stageWidth / ratio), Math.ceil(stageHeight / ratio), MenuState, ratio, fps, fps);
	}
}
