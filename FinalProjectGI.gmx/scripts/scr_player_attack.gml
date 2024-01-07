scr_getinput();

sprite_index = spr_attack; //doi sprite
image_speed = 1;


counter += 1; //count 6 image
if counter == 6 { //sau khi xong het 6 imgage cua sprite
    if (image_xscale > 0) { //neu nhu dang quay sang phai 
        instance_create(obj_player.x + 30, obj_player.y + 5, obj_dealDam);
    state = playerStates.idle; // quay ve trang thai dung yen
    } else if (image_xscale < 0) { //dang quay sang trai
        instance_create(obj_player.x - 30, obj_player.y + 5, obj_dealDam);
        state = playerStates.idle;
    }
    counter=0;
}

