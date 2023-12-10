sprite_index = spr_kingHit;
image_speed = 1/6;

counter ++;

with(obj_heart){
        if obj_king.hp == hihi {
            instance_destroy();
        }
    }

if counter == 12 {
    hp --;
    state = kingStates.idle;
    counter = 0;
}