sprite_index = spr_boxIdle;

if (place_meeting(x, y, obj_dealDam)) {
    state2 = boxStates.hit;
    with (obj_dealDam) instance_destroy();
}