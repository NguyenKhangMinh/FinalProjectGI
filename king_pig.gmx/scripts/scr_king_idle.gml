scr_getinput();

sprite_index = spr_kingIdle;

if (pressSpace) {
    state = kingStates.attack;
} else if (pressLeft or pressRight) {
    state = kingStates.run;
} else if (pressUp) {
    state = kingStates.jump;
} else if (pressS) { //open door
    if (place_meeting(x, y, obj_door) && global.open ==1) {
        state = kingStates.doorIn;
    }
}

moveX = 0;