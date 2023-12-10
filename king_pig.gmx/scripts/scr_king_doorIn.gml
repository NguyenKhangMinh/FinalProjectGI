sprite_index = spr_kingDoorIn;
image_speed = 1/3;

if (image_index > image_number - 1) {
    show_message("You win!");
    game_end();
}