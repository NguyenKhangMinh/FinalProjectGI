scr_getinput();

sprite_index = spr_idle;

if (pressSpace) {
    state = playerStates.attack;
} else if (pressLeft or pressRight) {
    state = playerStates.run;
} else if (pressUp) {
    state = playerStates.jump;
}


moveX = 0;
