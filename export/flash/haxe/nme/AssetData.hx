package nme;


import openfl.Assets;


class AssetData {

	
	public static var className = new #if haxe3 Map <String, #else Hash <#end Dynamic> ();
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();
	
	private static var initialized:Bool = false;
	
	
	public static function initialize ():Void {
		
		if (!initialized) {
			
			className.set ("images/die.png", nme.NME_images_die_png);
			type.set ("images/die.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/game_over.png", nme.NME_images_game_over_png);
			type.set ("images/game_over.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/head1.png", nme.NME_images_head1_png);
			type.set ("images/head1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/head2.png", nme.NME_images_head2_png);
			type.set ("images/head2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/head3.png", nme.NME_images_head3_png);
			type.set ("images/head3.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/health.png", nme.NME_images_health_png);
			type.set ("images/health.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/heart.png", nme.NME_images_heart_png);
			type.set ("images/heart.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/hpbg.png", nme.NME_images_hpbg_png);
			type.set ("images/hpbg.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/huh.png", nme.NME_images_huh_png);
			type.set ("images/huh.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/indicator.png", nme.NME_images_indicator_png);
			type.set ("images/indicator.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/larm.png", nme.NME_images_larm_png);
			type.set ("images/larm.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/larm2.png", nme.NME_images_larm2_png);
			type.set ("images/larm2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/larm3.png", nme.NME_images_larm3_png);
			type.set ("images/larm3.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/legs1.png", nme.NME_images_legs1_png);
			type.set ("images/legs1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/legs2.png", nme.NME_images_legs2_png);
			type.set ("images/legs2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/legs3.png", nme.NME_images_legs3_png);
			type.set ("images/legs3.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/likeit.png", nme.NME_images_likeit_png);
			type.set ("images/likeit.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/mutate.png", nme.NME_images_mutate_png);
			type.set ("images/mutate.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/noise.png", nme.NME_images_noise_png);
			type.set ("images/noise.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/ok.png", nme.NME_images_ok_png);
			type.set ("images/ok.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/oof.png", nme.NME_images_oof_png);
			type.set ("images/oof.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/pixels.png", nme.NME_images_pixels_png);
			type.set ("images/pixels.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/rarm1.png", nme.NME_images_rarm1_png);
			type.set ("images/rarm1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/rarm2.png", nme.NME_images_rarm2_png);
			type.set ("images/rarm2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/rarm3.png", nme.NME_images_rarm3_png);
			type.set ("images/rarm3.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/scanlines.png", nme.NME_images_scanlines_png);
			type.set ("images/scanlines.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/sigh.png", nme.NME_images_sigh_png);
			type.set ("images/sigh.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/skeleton.png", nme.NME_images_skeleton_png);
			type.set ("images/skeleton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/subtext.png", nme.NME_images_subtext_png);
			type.set ("images/subtext.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/title.png", nme.NME_images_title_png);
			type.set ("images/title.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/ummm.png", nme.NME_images_ummm_png);
			type.set ("images/ummm.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/vig.png", nme.NME_images_vig_png);
			type.set ("images/vig.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/weird.png", nme.NME_images_weird_png);
			type.set ("images/weird.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("images/win.png", nme.NME_images_win_png);
			type.set ("images/win.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("music/music.mp3", nme.NME_music_music_mp3);
			type.set ("music/music.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			className.set ("sounds/die.wav", nme.NME_sounds_die_wav);
			type.set ("sounds/die.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			className.set ("sounds/game-over-sub.wav", nme.NME_sounds_game_over_sub_wav);
			type.set ("sounds/game-over-sub.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			className.set ("sounds/game-over.wav", nme.NME_sounds_game_over_wav);
			type.set ("sounds/game-over.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			className.set ("sounds/mutate.wav", nme.NME_sounds_mutate_wav);
			type.set ("sounds/mutate.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			className.set ("sounds/select.wav", nme.NME_sounds_select_wav);
			type.set ("sounds/select.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			className.set ("sounds/start.wav", nme.NME_sounds_start_wav);
			type.set ("sounds/start.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			className.set ("sounds/subtest2.wav", nme.NME_sounds_subtest2_wav);
			type.set ("sounds/subtest2.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			className.set ("sounds/subtest3.wav", nme.NME_sounds_subtest3_wav);
			type.set ("sounds/subtest3.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			className.set ("sounds/subtitle_enter.wav", nme.NME_sounds_subtitle_enter_wav);
			type.set ("sounds/subtitle_enter.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			className.set ("sounds/talk.mp3", nme.NME_sounds_talk_mp3);
			type.set ("sounds/talk.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			className.set ("sounds/title_enter.wav", nme.NME_sounds_title_enter_wav);
			type.set ("sounds/title_enter.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			className.set ("img/debugger/buttons/open.png", nme.NME_img_debugger_buttons_open_png);
			type.set ("img/debugger/buttons/open.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/debugger/buttons/pause.png", nme.NME_img_debugger_buttons_pause_png);
			type.set ("img/debugger/buttons/pause.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/debugger/buttons/play.png", nme.NME_img_debugger_buttons_play_png);
			type.set ("img/debugger/buttons/play.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/debugger/buttons/record_off.png", nme.NME_img_debugger_buttons_record_off_png);
			type.set ("img/debugger/buttons/record_off.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/debugger/buttons/record_on.png", nme.NME_img_debugger_buttons_record_on_png);
			type.set ("img/debugger/buttons/record_on.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/debugger/buttons/restart.png", nme.NME_img_debugger_buttons_restart_png);
			type.set ("img/debugger/buttons/restart.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/debugger/buttons/step.png", nme.NME_img_debugger_buttons_step_png);
			type.set ("img/debugger/buttons/step.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/debugger/buttons/stop.png", nme.NME_img_debugger_buttons_stop_png);
			type.set ("img/debugger/buttons/stop.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/debugger/buttons/visualDebug.png", nme.NME_img_debugger_buttons_visualdebug_png);
			type.set ("img/debugger/buttons/visualDebug.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/debugger/flixel.png", nme.NME_img_debugger_flixel_png);
			type.set ("img/debugger/flixel.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/debugger/windowHandle.png", nme.NME_img_debugger_windowhandle_png);
			type.set ("img/debugger/windowHandle.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/logo/default.png", nme.NME_img_logo_default_png);
			type.set ("img/logo/default.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/logo/HaxeFlixel.svg", nme.NME_img_logo_haxeflixel_svg);
			type.set ("img/logo/HaxeFlixel.svg", Reflect.field (AssetType, "text".toUpperCase ()));
			className.set ("img/logo/logo.png", nme.NME_img_logo_logo_png);
			type.set ("img/logo/logo.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/preloader/corners.png", nme.NME_img_preloader_corners_png);
			type.set ("img/preloader/corners.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/preloader/light.png", nme.NME_img_preloader_light_png);
			type.set ("img/preloader/light.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/tile/autotiles.png", nme.NME_img_tile_autotiles_png);
			type.set ("img/tile/autotiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/tile/autotiles_alt.png", nme.NME_img_tile_autotiles_alt_png);
			type.set ("img/tile/autotiles_alt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/ui/analog/base.png", nme.NME_img_ui_analog_base_png);
			type.set ("img/ui/analog/base.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/ui/analog/stick.png", nme.NME_img_ui_analog_stick_png);
			type.set ("img/ui/analog/stick.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/ui/button.png", nme.NME_img_ui_button_png);
			type.set ("img/ui/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/ui/cursor.png", nme.NME_img_ui_cursor_png);
			type.set ("img/ui/cursor.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/ui/fontData11pt.png", nme.NME_img_ui_fontdata11pt_png);
			type.set ("img/ui/fontData11pt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/ui/gamepad/button_a.png", nme.NME_img_ui_gamepad_button_a_png);
			type.set ("img/ui/gamepad/button_a.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/ui/gamepad/button_b.png", nme.NME_img_ui_gamepad_button_b_png);
			type.set ("img/ui/gamepad/button_b.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/ui/gamepad/button_c.png", nme.NME_img_ui_gamepad_button_c_png);
			type.set ("img/ui/gamepad/button_c.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/ui/gamepad/button_down.png", nme.NME_img_ui_gamepad_button_down_png);
			type.set ("img/ui/gamepad/button_down.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/ui/gamepad/button_left.png", nme.NME_img_ui_gamepad_button_left_png);
			type.set ("img/ui/gamepad/button_left.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/ui/gamepad/button_right.png", nme.NME_img_ui_gamepad_button_right_png);
			type.set ("img/ui/gamepad/button_right.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/ui/gamepad/button_up.png", nme.NME_img_ui_gamepad_button_up_png);
			type.set ("img/ui/gamepad/button_up.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/ui/gamepad/button_x.png", nme.NME_img_ui_gamepad_button_x_png);
			type.set ("img/ui/gamepad/button_x.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/ui/gamepad/button_y.png", nme.NME_img_ui_gamepad_button_y_png);
			type.set ("img/ui/gamepad/button_y.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("fonts/arial.ttf", nme.NME_fonts_arial_ttf);
			type.set ("fonts/arial.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			className.set ("fonts/nokiafc22.ttf", nme.NME_fonts_nokiafc22_ttf);
			type.set ("fonts/nokiafc22.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			className.set ("snd/beep.mp3", nme.NME_snd_beep_mp3);
			type.set ("snd/beep.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			
			
			initialized = true;
			
		}
		
	}
	
	
}


class NME_images_die_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_game_over_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_head1_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_head2_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_head3_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_health_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_heart_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_hpbg_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_huh_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_indicator_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_larm_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_larm2_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_larm3_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_legs1_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_legs2_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_legs3_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_likeit_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_mutate_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_noise_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_ok_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_oof_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_pixels_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_rarm1_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_rarm2_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_rarm3_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_scanlines_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_sigh_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_skeleton_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_subtext_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_title_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_ummm_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_vig_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_weird_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_images_win_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_music_music_mp3 extends flash.media.Sound { }
class NME_sounds_die_wav extends flash.media.Sound { }
class NME_sounds_game_over_sub_wav extends flash.media.Sound { }
class NME_sounds_game_over_wav extends flash.media.Sound { }
class NME_sounds_mutate_wav extends flash.media.Sound { }
class NME_sounds_select_wav extends flash.media.Sound { }
class NME_sounds_start_wav extends flash.media.Sound { }
class NME_sounds_subtest2_wav extends flash.media.Sound { }
class NME_sounds_subtest3_wav extends flash.media.Sound { }
class NME_sounds_subtitle_enter_wav extends flash.media.Sound { }
class NME_sounds_talk_mp3 extends flash.media.Sound { }
class NME_sounds_title_enter_wav extends flash.media.Sound { }
class NME_img_debugger_buttons_open_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_debugger_buttons_pause_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_debugger_buttons_play_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_debugger_buttons_record_off_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_debugger_buttons_record_on_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_debugger_buttons_restart_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_debugger_buttons_step_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_debugger_buttons_stop_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_debugger_buttons_visualdebug_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_debugger_flixel_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_debugger_windowhandle_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_logo_haxeflixel_svg extends flash.utils.ByteArray { }
class NME_img_logo_logo_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_preloader_corners_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_preloader_light_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_tile_autotiles_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_tile_autotiles_alt_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_ui_analog_base_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_ui_analog_stick_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_ui_cursor_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_ui_fontdata11pt_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_ui_gamepad_button_a_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_ui_gamepad_button_b_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_ui_gamepad_button_c_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_ui_gamepad_button_down_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_ui_gamepad_button_left_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_ui_gamepad_button_right_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_ui_gamepad_button_up_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_ui_gamepad_button_x_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_ui_gamepad_button_y_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_fonts_arial_ttf extends flash.text.Font { }
class NME_fonts_nokiafc22_ttf extends flash.text.Font { }
class NME_snd_beep_mp3 extends flash.media.Sound { }
