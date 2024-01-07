scr_getinput();

sprite_index = spr_idle;
image_speed = 1/3;

if (pressSpace) {
    state = playerStates.attack;
} else if (pressLeft or pressRight) {
    state = playerStates.run;
} else if (pressUp and jumpCounter < jumpMax) {
    moveY=-10;
    state = playerStates.jump;
    jumpCounter++;
    
}


moveX = 0;
