if(can_shoot)
{
	instance_create_layer(x, y, "Instances", obj_bullet);
	alarm[0] = shoot_speed;
	can_shoot = false;
}