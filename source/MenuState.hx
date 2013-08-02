package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import flixel.addons.util.FlxDelay;

class MenuState extends FlxState {

	public var title:FlxSprite;
	public var showSubTextTimer:FlxDelay;
	public var subText2:FlxDelay;
	public var subText3:FlxDelay;
	public var subText:FlxSprite;
	public var scanlines:FlxSprite;
	public var vig:FlxSprite;
	public var noise:FlxSprite;

	override public function create():Void {
		FlxG.cameras.bgColor = 0xff131c1b;
		#if !FLX_NO_MOUSE
		FlxG.mouse.show();
		#end

		title = new FlxSprite(7,7);
		title.loadGraphic("images/title.png");
		add(title);
		title.flicker(.5);
		FlxG.sound.play("sounds/title_enter.wav");

		super.create();

		showSubTextTimer = new FlxDelay(1250);
		showSubTextTimer.callbackFunction = showSubText;

		subText2 = new FlxDelay(3300);
		subText2.callbackFunction = subtext2fun;

		subText3 = new FlxDelay(5300);
		subText3.callbackFunction = subtext3fun;

		subText = new FlxSprite(0,70);
		subText.loadGraphic("images/subtext.png",true,false,100,12,true);
		subText.addAnimation("1", [1,1,2,2,0], 1, false);
		add(subText);
		subText.visible = false;

		showSubTextTimer.start();
		subText2.start();
		subText3.start();

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
		if (!Reg.musicPlaying) {
			Reg.musicPlaying = true;
			FlxG.sound.playMusic("music/music.mp3",.5);
		}

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
		FlxG.sound.play("sounds/start.wav");
		FlxG.cameras.fade(0xff0a0e0e,1,false,changeLevel);
	}

	public function changeLevel():Void {
		FlxG.switchState(new PlayState());
	}

	public function subtext2fun():Void {
		FlxG.sound.play("sounds/subtest2.wav");
	}

	public function subtext3fun():Void {
		FlxG.sound.play("sounds/subtest3.wav");
	}

	public function showSubText() {
		subText.visible = true;
		subText.play("1");
		FlxG.sound.play("sounds/subtitle_enter.wav");
		subText.flicker(.75);
	}

}