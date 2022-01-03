/// @description Remove enemies and show destination worlds

//Show
if (show == false) {

    //Remove enemies
    with (obj_enemyparent) instance_destroy();

    //Show worlds
    show = true;
}

