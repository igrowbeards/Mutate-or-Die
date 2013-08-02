package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import flixel.tile.FlxTilemap;
import flixel.util.FlxPoint;
import flixel.ui.FlxBar;
import flixel.addons.util.FlxDelay;
import flixel.tweens.FlxTween;
import flixel.tweens.misc.ColorTween;
import flixel.tweens.util.Ease;
/**
 * A FlxState which can be used for the actual gameplay.
 */
class PlayState extends FlxState {

	public var player:Player;
	public var mutateOption:FlxSprite;
	public var dieOption:FlxSprite;
	public var indicator:FlxSprite;
	public var currentOption:Int = 1;
	public var mutationsLeft:Bool = true;
	public var hpBar:FlxBar;
	public var hpBg:FlxSprite;
	public var words:Talk;
	public var skeleton:FlxSprite;
	public var mutations:Bool;
	public var deathTime:FlxDelay;
	public var scanlines:FlxSprite;
	public var vig:FlxSprite;
	public var ok:Speech;
	public var tw:ColorTween;
	public var noise:FlxSprite;

	/**
	 * Function that is called up when to state is created to set it up.
	 */
	override public function create():Void {
		// Set a background color
		FlxG.cameras.bgColor = 0xff131c1b;
		// Show the mouse (in case it hasn't been disabled)
		#if !FLX_NO_MOUSE
		FlxG.mouse.show();
		#end

		super.create();

		player = new Player();
		add(player);

		skeleton = new FlxSprite(38,39);
		skeleton.loadGraphic("images/skeleton.png",true,false,20,36,true);
		skeleton.addAnimation("non-mutated", [1], 4, true);
		skeleton.addAnimation("mutated", [0], 4, true);
		skeleton.play("non-mutated");
		skeleton.visible = false;
		add(skeleton);

		mutateOption = new FlxSprite(8,83);
		mutateOption.loadGraphic("images/mutate.png");
		add(mutateOption);

		dieOption = new FlxSprite(8,91);
		dieOption.loadGraphic("images/die.png");
		add(dieOption);

		indicator = new FlxSprite(3,83);
		indicator.loadGraphic("images/indicator.png",true,false,3,5,true);
		indicator.addAnimation("default", [0,0,0,1], 4, true);
		indicator.play("default");
		add(indicator);

		hpBg = new FlxSprite(41,83);
		hpBg.loadGraphic("images/hpbg.png");
		add(hpBg);

	    hpBar = new FlxBar(53, 85, FlxBar.FILL_LEFT_TO_RIGHT, 41, 9, player, "totalSteps", 0, player.totalSteps);
	    hpBar.createImageBar(null,"images/health.png",0x00000000,0x00000000);
	    add(hpBar);

	    words = new Talk();
	    add(words);
	    Reg.words = words;

	    deathTime = new FlxDelay(1000);
	    deathTime.callbackFunction = resetRoom;

		ok = new Speech(35,24);
		ok.loadGraphic("images/ok.png");
		add(ok);

		Reg.playState = this;

		scanlines = new FlxSprite(0,0);
		scanlines.loadGraphic("images/scanlines.png");
		add(scanlines);

		vig = new FlxSprite(0,0);
		vig.loadGraphic("images/vig.png");
		add(vig);
		//colorShift();
		//FlxG.sound.playMusic("music/fuzz.mp3",0.3);
		noise = new FlxSprite(0,0);
		noise.loadGraphic("images/noise.png",true,false,100,100,true);
		noise.addAnimation("1", [0,1,2,1,0,2], 20, true);
		noise.play("1");
		add(noise);
	}

	override public function destroy():Void {
		super.destroy();
	}

	override public function update():Void {
		super.update();
		//skeleton.color = tw.color;
		if (FlxG.keys.justPressed("UP") || FlxG.keys.justPressed("DOWN")) {
			if (mutationsLeft) {
				if (currentOption == 1) {
					currentOption = 2;
					indicator.y = 91;
					FlxG.sound.play("sounds/select.wav");
				}
				else {
					currentOption = 1;
					indicator.y = 83;
					FlxG.sound.play("sounds/select.wav");
				}
			}
		}

		if (FlxG.keys.justPressed("SPACE")) {
			if (currentOption == 1) {
				mutate();
			}
			else {
				die();
			}

		}
	}

	public function mutate() {
		player.mutate();
		words.talk();
		if (!mutations) {
			mutations = true;
			skeleton.play("mutated");
		}
	}

	public function die() {
		words.exists = false;
		FlxG.sound.play("sounds/die.wav");
		deathTime.start();
		player.visible = false;
		skeleton.visible = true;
		ok.visible = true;
	}

	public function noMutationsLeft() {
		mutateOption.exists = false;
		mutationsLeft = false;
		currentOption = 2;
		indicator.y = 91;
	}

	public function resetRoom() {
		FlxG.cameras.fade(0xff0a0e0e,1,false,changeLevel);
	}

	public function changeLevel():Void {
		FlxG.switchState(new GameOverState());
	}

	public function colorShift2() {
		trace("color shift 2");
	}

	/*
	public function colorShift() {
		tw = new ColorTween(colorShift2, FlxTween.PERSIST);
        tw.tween(3, 0xff0000, 0x12ff00, 1, 1, Ease.quadOut);
        addTween(tw);
	}
	*/


}