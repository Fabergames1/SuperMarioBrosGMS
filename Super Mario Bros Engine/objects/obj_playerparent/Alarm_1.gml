/// @description Make the player blink when invulnerable

if (invulnerable == true) {

    image_alpha = !image_alpha;
    alarm[1] = 1;
}
else
    image_alpha = 1;

