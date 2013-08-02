#if !macro
#if (openfl_html5 && !flambe)

import Main;
import haxe.Resource;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Loader;
import flash.events.Event;
import flash.media.Sound;
import flash.net.URLLoader;
import flash.net.URLRequest;
import flash.net.URLLoaderDataFormat;
//import flash.Assets;
import flash.Lib;

class ApplicationMain {

	private static var completed:Int;
	private static var preloader:NMEPreloader;
	private static var total:Int;

	public static var loaders:Map <String, Loader>;
	public static var urlLoaders:Map <String, URLLoader>;

	public static function main() {
		completed = 0;
		loaders = new Map <String, Loader>();
		urlLoaders = new Map <String, URLLoader>();
		total = 0;
		
		//flash.Lib.setPackage("HaxeFlixel", "mutate-or-die", "com.example.myapp", "0.0.1");
		flash.Lib.current.loaderInfo = flash.display.LoaderInfo.create (null);
		
		try {
			
			if (Reflect.hasField (js.Browser.window, "winParameters")) {
				
				Reflect.setField (flash.Lib.current.loaderInfo, "parameters", Reflect.field (js.Browser.window, "winParameters")());
				
			}
			
			flash.Lib.current.stage.loaderInfo = flash.Lib.current.loaderInfo;
			
		} catch (e:Dynamic) {}

		

		
		preloader = new NMEPreloader();
		
		Lib.current.addChild(preloader);
		preloader.onInit();

		
		
		var urlLoader:URLLoader = new URLLoader();
		urlLoader.dataFormat = BINARY;
		urlLoaders.set("data/data-goes-here.txt", urlLoader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("images/die.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("images/head1.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("images/head2.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("images/head3.png", loader);
		total ++;
		
		
		var urlLoader:URLLoader = new URLLoader();
		urlLoader.dataFormat = BINARY;
		urlLoaders.set("images/images-go-here.txt", urlLoader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("images/indicator.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("images/larm.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("images/legs1.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("images/legs2.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("images/legs3.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("images/mutate.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("images/pixels.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("images/rarm1.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("images/skeleton.png", loader);
		total ++;
		
		
		var urlLoader:URLLoader = new URLLoader();
		urlLoader.dataFormat = BINARY;
		urlLoaders.set("music/music-goes-here.txt", urlLoader);
		total ++;
		
		
		var urlLoader:URLLoader = new URLLoader();
		urlLoader.dataFormat = BINARY;
		urlLoaders.set("sounds/sounds-go-here.txt", urlLoader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/debugger/buttons/open.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/debugger/buttons/pause.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/debugger/buttons/play.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/debugger/buttons/record_off.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/debugger/buttons/record_on.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/debugger/buttons/restart.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/debugger/buttons/step.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/debugger/buttons/stop.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/debugger/buttons/visualDebug.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/debugger/flixel.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/debugger/windowHandle.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/logo/default.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/logo/logo.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/preloader/corners.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/preloader/light.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/tile/autotiles.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/tile/autotiles_alt.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/ui/analog/base.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/ui/analog/stick.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/ui/button.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/ui/cursor.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/ui/fontData11pt.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/ui/gamepad/button_a.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/ui/gamepad/button_b.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/ui/gamepad/button_c.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/ui/gamepad/button_down.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/ui/gamepad/button_left.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/ui/gamepad/button_right.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/ui/gamepad/button_up.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/ui/gamepad/button_x.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("img/ui/gamepad/button_y.png", loader);
		total ++;
		
		
		
		
		
		var resourcePrefix = "NME_:bitmap_";
		for (resourceName in Resource.listNames()) {
			if (StringTools.startsWith (resourceName, resourcePrefix)) {
				var type = Type.resolveClass(StringTools.replace (resourceName.substring(resourcePrefix.length), "_", "."));
				if (type != null) {
					total++;
					var instance = Type.createInstance (type, [ 0, 0, true, 0x00FFFFFF, bitmapClass_onComplete ]);
				}
			}
		}
		
		if (total == 0) {
			begin();
		} else {
			for (path in loaders.keys()) {
				var loader:Loader = loaders.get(path);
				loader.contentLoaderInfo.addEventListener("complete",
          loader_onComplete);
				loader.load (new URLRequest (path));
			}

			for (path in urlLoaders.keys()) {
				var urlLoader:URLLoader = urlLoaders.get(path);
				urlLoader.addEventListener("complete", loader_onComplete);
				urlLoader.load(new URLRequest (path));
			}
		}
	}

	private static function begin():Void {
		preloader.addEventListener(Event.COMPLETE, preloader_onComplete);
		preloader.onLoaded ();
	}
	
	private static function bitmapClass_onComplete(instance:BitmapData):Void {
		completed++;
		var classType = Type.getClass (instance);
		Reflect.setField (classType, "preload", instance);
		if (completed == total) {
			begin ();
		}
	}

	private static function loader_onComplete(event:Event):Void {
		completed ++;
		preloader.onUpdate (completed, total);
		if (completed == total) {
			begin ();
		}
	}

	private static function preloader_onComplete(event:Event):Void {
		preloader.removeEventListener(Event.COMPLETE, preloader_onComplete);
		Lib.current.removeChild(preloader);
		preloader = null;
		if (Reflect.field(Main, "main") == null)
		{
			var mainDisplayObj = Type.createInstance(DocumentClass, []);
			if (Std.is(mainDisplayObj, flash.display.DisplayObject))
				flash.Lib.current.addChild(cast mainDisplayObj);
		}
		else
		{
			Reflect.callMethod(Main, Reflect.field (Main, "main"), []);
		}
	}
}

@:build(DocumentClass.build())
class DocumentClass extends Main {}

#else

import Main;

class ApplicationMain {

	public static function main() {
		if (Reflect.field(Main, "main") == null) {
			Type.createInstance(Main, []);
		} else {
			Reflect.callMethod(Main, Reflect.field(Main, "main"), []);
		}
	}
}

#end
#else

import haxe.macro.Context;
import haxe.macro.Expr;

class DocumentClass {
	
	macro public static function build ():Array<Field> {
		var classType = Context.getLocalClass().get();
		var searchTypes = classType;
		while (searchTypes.superClass != null) {
			if (searchTypes.pack.length == 2 && searchTypes.pack[1] == "display" && searchTypes.name == "DisplayObject") {
				var fields = Context.getBuildFields();
				var method = macro {
					return flash.Lib.current.stage;
				}
				fields.push ({ name: "get_stage", access: [ APrivate, AOverride ], kind: FFun({ args: [], expr: method, params: [], ret: macro :flash.display.Stage }), pos: Context.currentPos() });
				return fields;
			}
			searchTypes = searchTypes.superClass.t.get();
		}
		return null;
	}
	
}
#end