package nme;


import openfl.Assets;


class AssetData {

	
	public static var className = new Map <String, Dynamic> ();
	public static var library = new Map <String, LibraryType> ();
	public static var path = new Map <String, String> ();
	public static var type = new Map <String, AssetType> ();
	
	private static var initialized:Bool = false;
	
	
	public static function initialize ():Void {
		
		if (!initialized) {
			
			path.set ("data/data-goes-here.txt", "data/data-goes-here.txt");
			type.set ("data/data-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("images/die.png", "images/die.png");
			type.set ("images/die.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/head1.png", "images/head1.png");
			type.set ("images/head1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/head2.png", "images/head2.png");
			type.set ("images/head2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/head3.png", "images/head3.png");
			type.set ("images/head3.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/images-go-here.txt", "images/images-go-here.txt");
			type.set ("images/images-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("images/indicator.png", "images/indicator.png");
			type.set ("images/indicator.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/larm.png", "images/larm.png");
			type.set ("images/larm.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/legs1.png", "images/legs1.png");
			type.set ("images/legs1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/legs2.png", "images/legs2.png");
			type.set ("images/legs2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/legs3.png", "images/legs3.png");
			type.set ("images/legs3.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/mutate.png", "images/mutate.png");
			type.set ("images/mutate.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/pixels.png", "images/pixels.png");
			type.set ("images/pixels.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/rarm1.png", "images/rarm1.png");
			type.set ("images/rarm1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/skeleton.png", "images/skeleton.png");
			type.set ("images/skeleton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("music/music-goes-here.txt", "music/music-goes-here.txt");
			type.set ("music/music-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("sounds/sounds-go-here.txt", "sounds/sounds-go-here.txt");
			type.set ("sounds/sounds-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("img/debugger/buttons/open.png", "img/debugger/buttons/open.png");
			type.set ("img/debugger/buttons/open.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/debugger/buttons/pause.png", "img/debugger/buttons/pause.png");
			type.set ("img/debugger/buttons/pause.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/debugger/buttons/play.png", "img/debugger/buttons/play.png");
			type.set ("img/debugger/buttons/play.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/debugger/buttons/record_off.png", "img/debugger/buttons/record_off.png");
			type.set ("img/debugger/buttons/record_off.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/debugger/buttons/record_on.png", "img/debugger/buttons/record_on.png");
			type.set ("img/debugger/buttons/record_on.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/debugger/buttons/restart.png", "img/debugger/buttons/restart.png");
			type.set ("img/debugger/buttons/restart.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/debugger/buttons/step.png", "img/debugger/buttons/step.png");
			type.set ("img/debugger/buttons/step.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/debugger/buttons/stop.png", "img/debugger/buttons/stop.png");
			type.set ("img/debugger/buttons/stop.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/debugger/buttons/visualDebug.png", "img/debugger/buttons/visualDebug.png");
			type.set ("img/debugger/buttons/visualDebug.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/debugger/flixel.png", "img/debugger/flixel.png");
			type.set ("img/debugger/flixel.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/debugger/windowHandle.png", "img/debugger/windowHandle.png");
			type.set ("img/debugger/windowHandle.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/logo/default.png", "img/logo/default.png");
			type.set ("img/logo/default.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/logo/logo.png", "img/logo/logo.png");
			type.set ("img/logo/logo.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/preloader/corners.png", "img/preloader/corners.png");
			type.set ("img/preloader/corners.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/preloader/light.png", "img/preloader/light.png");
			type.set ("img/preloader/light.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/tile/autotiles.png", "img/tile/autotiles.png");
			type.set ("img/tile/autotiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/tile/autotiles_alt.png", "img/tile/autotiles_alt.png");
			type.set ("img/tile/autotiles_alt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/ui/analog/base.png", "img/ui/analog/base.png");
			type.set ("img/ui/analog/base.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/ui/analog/stick.png", "img/ui/analog/stick.png");
			type.set ("img/ui/analog/stick.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/ui/button.png", "img/ui/button.png");
			type.set ("img/ui/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/ui/cursor.png", "img/ui/cursor.png");
			type.set ("img/ui/cursor.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/ui/fontData11pt.png", "img/ui/fontData11pt.png");
			type.set ("img/ui/fontData11pt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/ui/gamepad/button_a.png", "img/ui/gamepad/button_a.png");
			type.set ("img/ui/gamepad/button_a.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/ui/gamepad/button_b.png", "img/ui/gamepad/button_b.png");
			type.set ("img/ui/gamepad/button_b.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/ui/gamepad/button_c.png", "img/ui/gamepad/button_c.png");
			type.set ("img/ui/gamepad/button_c.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/ui/gamepad/button_down.png", "img/ui/gamepad/button_down.png");
			type.set ("img/ui/gamepad/button_down.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/ui/gamepad/button_left.png", "img/ui/gamepad/button_left.png");
			type.set ("img/ui/gamepad/button_left.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/ui/gamepad/button_right.png", "img/ui/gamepad/button_right.png");
			type.set ("img/ui/gamepad/button_right.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/ui/gamepad/button_up.png", "img/ui/gamepad/button_up.png");
			type.set ("img/ui/gamepad/button_up.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/ui/gamepad/button_x.png", "img/ui/gamepad/button_x.png");
			type.set ("img/ui/gamepad/button_x.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/ui/gamepad/button_y.png", "img/ui/gamepad/button_y.png");
			type.set ("img/ui/gamepad/button_y.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("fonts/arial.ttf", nme.NME_fonts_arial_ttf);
			type.set ("fonts/arial.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			className.set ("fonts/nokiafc22.ttf", nme.NME_fonts_nokiafc22_ttf);
			type.set ("fonts/nokiafc22.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("snd/beep.mp3", "snd/beep.mp3");
			type.set ("snd/beep.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			
			
			initialized = true;
			
		}
		
	}
	
	
}


















































class NME_fonts_arial_ttf extends flash.text.Font { }
class NME_fonts_nokiafc22_ttf extends flash.text.Font { }

