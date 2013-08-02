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

class Player extends FlxGroup {

	public var head:FlxSprite;
	public var larm:FlxSprite;
	public var legs:FlxSprite;
	public var rarm:FlxSprite;
	public var headStep:Int = 1;
	public var rarmStep:Int = 1;
	public var larmStep:Int = 1;
	public var legStep:Int = 1;
	public var totalHeadSteps:Int = 5;
	public var totalRarmSteps:Int = 5;
	public var totalLarmSteps:Int = 5;
	public var totalLegSteps:Int = 4;
	public var totalSteps:Int = 10;

	override public function new():Void {
		super();

		head = new FlxSprite(28,15);
		var rando = Std.random(3);
		if(rando == 0) {
			head.loadGraphic("images/head1.png",true, false, 45, 36,true);
		}
		else if (rando == 1) {
			head.loadGraphic("images/head2.png",true, false, 45, 36,true);
		}
		else {
			head.loadGraphic("images/head3.png",true, false, 45, 36,true);
		}
		head.addAnimation("1", [0], 3, true);
		head.addAnimation("2", [1,2], 3, false);
		head.addAnimation("3", [3,4,5], 3, false);
		head.addAnimation("4", [6,7,8,9], 3, false);
		head.addAnimation("5", [10,11,12,13,14,15], 3, false);
		head.play("1");
		add(head);

		legs = new FlxSprite(41,51);
		var rando2 = Std.random(3);
		if(rando2 == 0) {
			legs.loadGraphic("images/legs1.png",true, false, 13, 24,true);
		}
		else if(rando2 == 1) {
			legs.loadGraphic("images/legs2.png",true, false, 13, 24,true);
		}
		else {
			legs.loadGraphic("images/legs3.png",true, false, 13, 24,true);
		}
		legs.addAnimation("1", [0], 3, true);
		legs.addAnimation("2", [1,2], 3, false);
		legs.addAnimation("3", [3,4,5], 3, false);
		legs.addAnimation("4", [6,7,8,9], 3, false);
		legs.play("1");
		add(legs);

		rarm = new FlxSprite(18,51);
		var rando3 = Std.random(3);
		if(rando3 == 0) {
			rarm.loadGraphic("images/rarm1.png",true, false, 23, 24,true);
		}
		else if(rando3 == 0) {
			rarm.loadGraphic("images/rarm2.png",true, false, 23, 24,true);
		}
		else {
			rarm.loadGraphic("images/rarm3.png",true, false, 23, 24,true);
		}
		rarm.addAnimation("1", [0], 3, true);
		rarm.addAnimation("2", [1,2], 3, false);
		rarm.addAnimation("3", [3,4,5], 3, false);
		rarm.addAnimation("4", [6,7,8,9], 3, false);
		rarm.addAnimation("5", [10,11,12,13,14,15], 3, false);
		rarm.play("1");
		add(rarm);

		larm = new FlxSprite(54,51);
		var rando4 = Std.random(3);
		if(rando4 == 0) {
			larm.loadGraphic("images/larm.png",true, false, 32, 24,true);
		}
		else if(rando4 == 1) {
			larm.loadGraphic("images/larm2.png",true, false, 32, 24,true);
		}
		else {
			larm.loadGraphic("images/larm3.png",true, false, 32, 24,true);
		}
		larm.addAnimation("1", [0], 3, true);
		larm.addAnimation("2", [1,2], 3, false);
		larm.addAnimation("3", [3,4,5], 3, false);
		larm.addAnimation("4", [6,7,8,9], 3, false);
		larm.addAnimation("5", [10,11,12,13,14,15], 3, false);
		larm.play("1");
		add(larm);

	}

	public function mutate() {
		FlxG.sound.play("sounds/mutate.wav");
		var rand = (Std.random(4) + 1);
		if (rand == 1 && headStep < totalHeadSteps) {
			headStep++;
			totalSteps--;
			head.play(Std.string(headStep));
		}
		else if (rand == 2 && legStep < totalLegSteps) {
			legStep++;
			totalSteps--;
			legs.play(Std.string(legStep));
		}
		else if (rand == 3 && rarmStep < totalRarmSteps) {
			rarmStep++;
			totalSteps--;
			rarm.play(Std.string(rarmStep));
		}
		else if (rand == 4 && larmStep < totalLarmSteps) {
			larmStep++;
			totalSteps--;
			larm.play(Std.string(larmStep));
		}
		else {
			if (headStep < totalHeadSteps) {
				totalSteps--;
				headStep++;
				head.play(Std.string(headStep));
			}
			else if (legStep < totalLegSteps) {
				totalSteps--;
				legStep++;
				legs.play(Std.string(legStep));
			}
			else if (rarmStep < totalRarmSteps) {
				totalSteps--;
				rarmStep++;
				rarm.play(Std.string(rarmStep));
			}
			else if (larmStep < totalLarmSteps) {
				totalSteps--;
				larmStep++;
				larm.play(Std.string(larmStep));
			}
		}
	}

	override public function destroy():Void {
		super.destroy();
	}

	override public function update():Void {
		super.update();

		if (totalSteps == 0) {
			Reg.playState.noMutationsLeft();
		}
	}

}