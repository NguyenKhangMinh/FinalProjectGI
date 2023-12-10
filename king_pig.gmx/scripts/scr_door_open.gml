scr_getinput();

sprite_index = spr_doorOpen;

if !audio_is_playing(sou_openDoor) && global.open == 0 {
    audio_play_sound(sou_openDoor, 1, false);
}

if (image_index > image_number - 1) {
    image_speed = 0;
}

global.open = 1;