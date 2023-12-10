sprite_index = spr_cannonShoot;
image_speed = 1/3;



if (image_index > image_number - 1) {
    instance_create(160, 64, obj_ball);
    state4 = cannonStates.idle;
}