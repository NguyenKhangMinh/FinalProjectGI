sprite_index = spr_boxHit;

if !audio_is_playing(sou_hitBox) {
    audio_play_sound(sou_hitBox, 1, false);
}

counter ++;

if counter == 4 {
    hp --;
    state2 = boxStates.idle;
    counter = 0;
}

if hp <= 0 {
    effect_create_above(ef_explosion, x, y, 0, c_white);
    instance_destroy();
    audio_play_sound(sou_explosion, 1, false);
}