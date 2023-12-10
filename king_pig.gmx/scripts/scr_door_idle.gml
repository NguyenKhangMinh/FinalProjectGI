scr_getinput();

sprite_index = spr_doorIdle;

if (pressS) {
    if (place_meeting(x, y, obj_king) && global.open == 0) {
        state = doorStates.open;
    }
}