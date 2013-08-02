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

class Talk extends FlxGroup {

	public var weird:Speech;
	public var sigh:Speech;
	public var likeit:Speech;
	public var huh:Speech;
	public var oof:Speech;
	public var umm:Speech;

	override public function new():Void {
		super();

		weird = new Speech(25,18);
		weird.loadGraphic("images/weird.png");
		add(weird);

		sigh = new Speech(34,18);
		sigh.loadGraphic("images/sigh.png");
		add(sigh);

		likeit = new Speech(24,14);
		likeit.loadGraphic("images/likeit.png");
		add(likeit);

		umm = new Speech(25,22);
		umm.loadGraphic("images/ummm.png");
		add(umm);

		huh = new Speech(37,21);
		huh.loadGraphic("images/huh.png");
		add(huh);

		oof = new Speech(37,21);
		oof.loadGraphic("images/oof.png");
		add(oof);
	}

	override public function destroy():Void {
		super.destroy();
	}

	override public function update():Void {
		super.update();
	}

	public function hideAll() {
		weird.visible = false;
		sigh.visible = false;
		likeit.visible = false;
		umm.visible = false;
		huh.visible = false;
		oof.visible = false;
	}

	public function talk() {
		if (Std.random(100) <= 20) {
			hideAll();
			switch(Std.random(7)) {
			    case 0:
			    	weird.talk();
			    case 1:
			    	sigh.talk();
			    case 2:
			    	likeit.talk();
			    case 3:
			    	umm.talk();
			    case 4:
			    	huh.talk();
			    case 5:
			    	huh.talk();
			    case 6:
			    	oof.talk();
		    }
		}
	}

}