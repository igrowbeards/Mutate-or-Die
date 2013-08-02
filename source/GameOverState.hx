package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import flixel.addons.util.FlxDelay;

class GameOverState extends FlxState {

	public var title:FlxSprite;
	public var showSubTextTimer:FlxDelay;
	public var sceneTransition:FlxDelay;
	public var subText:FlxSprite;
	public var scanlines:FlxSprite;
	public var vig:FlxSprite;
	public var noise:FlxSprite;

	override public function create():Void {
		FlxG.cameras.bgColor = 0xff131c1b;
		#if !FLX_NO_MOUSE
		FlxG.mouse.show();
		#end

		title = new FlxSprite(0,7);
		title.loadGraphic("images/game_over.png");
		add(title);
		title.flicker(.5);

		super.create();
		showSubTextTimer = new FlxDelay(1250);
		showSubTextTimer.callbackFunction = showSubText;

		sceneTransition = new FlxDelay(2000);
		sceneTransition.callbackFunction = resetRoom;

		subText = new FlxSprite(0,80);
		subText.loadGraphic("images/win.png");
		add(subText);
		subText.visible = false;

		showSubTextTimer.start();

		scanlines = new FlxSprite(0,0);
		scanlines.loadGraphic("images/scanlines.png");
		add(scanlines);

		vig = new FlxSprite(0,0);
		vig.loadGraphic("images/vig.png");
		add(vig);

		noise = new FlxSprite(0,0);
		noise.loadGraphic("images/noise.png",true,false,100,100,true);
		noise.addAnimation("1", [0,1,2,1,0,2], 20, true);
		noise.play("1");
		add(noise);

		//colorShift();
		FlxG.sound.play("sounds/game-over.wav");

	}

	override public function destroy():Void {
		super.destroy();
	}

	override public function update():Void {
		super.update();

		if (FlxG.keys.justPressed("SPACE")) {
			resetRoom();
		}
	}

	public function resetRoom() {
		FlxG.cameras.fade(0xff0a0e0e,1,false,changeLevel);
	}

	public function changeLevel():Void {
		FlxG.switchState(new MenuState());
	}

	public function showSubText() {
		subText.visible = true;
		subText.flicker(.75);
		FlxG.sound.play("sounds/game-over-sub.wav");
		sceneTransition.start();
	}

}