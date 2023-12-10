scr_getinput();

sprite_index = spr_kingAttack; //doi sprite
image_speed = 1;

if(!audio_is_playing(sou_attack)) {
    audio_play_sound(sou_attack, 1, true);
}

counter += 1; //count 6 image
if counter == 6 { //sau khi xong het 6 imgage cua sprite
    if (image_xscale > 0) { //neu nhu dang quay sang phai 
        instance_create(obj_king.x + 15, obj_king.y - 10, obj_dealDam);
    } else if (image_xscale < 0) { //dang quay sang trai
        instance_create(obj_king.x - 45, obj_king.y - 10, obj_dealDam);
    }
    
    audio_stop_sound(sou_attack);
    counter = 0; //reset lai counter
    state = kingStates.idle; // quay ve trang thai dung yen
}