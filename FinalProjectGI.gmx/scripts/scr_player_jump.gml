scr_getinput();

sprite_index = spr_jump; //doi hinh anh thanh jump


// Idle when collision ground
if (place_meeting(x, y + moveY, obj_ground)) //neu sap va cham mat dat
{
    repeat(abs(moveY)) //lap lai tung pixel cho chinh xac
    {
        if (not place_meeting(x, y + sign(moveY), obj_ground))
        {
            y += sign(moveY);
        }
        break;
    }
    
}   
   
state = playerStates.idle;


// Movement on the air
if (pressSpace) {
    state = playerStates.attack;
}

if (pressRight) {
    moveX = spd - 1;
    if (pressSpace) {
    state = playerStates.attack;
    }
} 

if (pressLeft) {
    moveX = -(spd -1);
    if (pressSpace) {
    state = playerStates.attack;
    }
}

if (pressUp and jumpCounter < jumpMax) {
    moveY=-10;
    state = playerStates.jump;
    jumpCounter++;
}
