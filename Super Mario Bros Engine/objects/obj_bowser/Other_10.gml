/// @description Custom bowser kill event

//Inherit event
event_inherited();

//Switch between enemies
switch (fake) {

    //Goomba
    case (1): imdead.sprite_index = spr_goomba; break;
    
    //Koopa
    case (2): imdead.sprite_index = spr_shell; break;
    
    //Buzzy Beetle
    case (3): imdead.sprite_index = spr_shell_buzzy; break
    
    //Spiny
    case (4): imdead.sprite_index = spr_spiny; break;
    
    //Lakitu
    case (5): imdead.sprite_index = spr_lakitu; break;
    
    //Blooper
    case (6): imdead.sprite_index = spr_blooper; break;
    
    //Hammer Bro.
    case (7): imdead.sprite_index = spr_hammerbro; break;
}

//Set motion
imdead.vspeed = -3;
imdead.hspeed = 0;
imdead.gravity = 0.1;

