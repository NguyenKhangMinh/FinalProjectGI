scr_getinput();

sprite_index = spr_run; //doi sprite run



moveX = (pressRight - pressLeft) * spd; //di chuyen voi moveX don vi

if (pressLeft + pressRight == 0) { //neu khong nhan phim nao thi dung yen
    state = playerStates.idle;
}

if (pressUp) { //neu dang nhan phim len, nhay len tren 10 don vi
    moveX = 0;
    moveY = -10;
    state = playerStates.jump; //set trang thai nhay
}

if (pressSpace) { //an phim danh
    state = playerStates.attack; //chuyen trang thai danh
}
