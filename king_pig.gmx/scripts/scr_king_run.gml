scr_getinput();

sprite_index = spr_kingRun; //doi sprite run

if !audio_is_playing(sou_running) {
    audio_play_sound(sou_running, 1, true);
}

moveX = (pressRight - pressLeft) * spd; //di chuyen voi moveX don vi

if (pressLeft + pressRight == 0) { //neu khong nhan phim nao thi dung yen
    audio_stop_sound(sou_running);
    state = kingStates.idle;
}

if (pressUp) { //neu dang nhan phim len, nhay len tren 10 don vi
    moveX = 0;
    moveY = -10;
    audio_stop_sound(sou_running);
    state = kingStates.jump; //set trang thai nhay
}

if (pressSpace) { //an phim danh
    audio_stop_sound(sou_running);
    state = kingStates.attack; //chuyen trang thai danh
}