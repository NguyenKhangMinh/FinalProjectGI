scr_getinput();

sprite_index = spr_kingJump; //doi hinh anh thanh jump

moveY = -10;

// Idle when collision ground
if (place_meeting(x, y + moveY, o_ground)) //neu sap va cham mat dat
{
    repeat(abs(moveY)) //lap lai tung pixel cho chinh xac
    {
        if (not place_meeting(x, y + sign(moveY), o_ground))
        {
            y += sign(moveY);
        }
        break;
    }
           
    state = kingStates.idle;
}

// Movement on the air
if (pressSpace) {
    state = kingStates.attack;
}

if (pressRight) {
    moveX = spd - 1;
    if (pressSpace) {
    state = kingStates.attack;
    }
} 

if (pressLeft) {
    moveX = -(spd -1);
    if (pressSpace) {
    state = kingStates.attack;
    }
}