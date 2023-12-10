image_speed = 1/3;
sprite_index = spr_pigLightCannon;

if (image_index > image_number - 1) {
    obj_cannon.state4 = cannonStates.shoot;
    image_speed = 0;
      
    counter ++;  
    if counter > 10 {
        state3 = pigStates.matchOn;
        counter = 0;
    }
  
}