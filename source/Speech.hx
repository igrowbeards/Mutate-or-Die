package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import flixel.tile.FlxTilemap;
import flixel.util.FlxPoint;
import flixel.group.FlxGroup;
import flixel.addons.util.FlxDelay;

class Speech extends FlxSprite {

	public var weird:FlxSprite;
	public var talkTime:FlxDelay;
	public var talkInDelay:FlxDelay;

	override public function new(X:Int,Y:Int):Void {
		super(X,Y);
		this.visible = false;
		talkInDelay = new FlxDelay(500);
		talkInDelay.callbackFunction = talkNow;
		talkTime = new FlxDelay(2000);
		talkTime.callbackFunction = hideText;
	}

	override public function destroy():Void {
		super.destroy();
	}

	override public function update():Void {
		super.update();
	}

	public function talk() {
		talkInDelay.start();
	}

	public function talkNow() {
		this.visible = true;
		talkTime.start();
		FlxG.sound.play("sounds/talk.mp3");
	}

	public function hideText() {
		this.visible = false;
	}

}