//Movement and collision
hspd = (-keyboard_check(ord("A")) + keyboard_check(ord("D"))) * spd;
vspd = (-keyboard_check(ord("W")) + keyboard_check(ord("S"))) * spd;

if (place_meeting(x + hspd, y, obj_wall)) 
{
    while (!place_meeting(x + sign(hspd), y, obj_wall))
        x += sign(hspd);
    hspd = 0;
}
x += hspd;

if (place_meeting(x, y + vspd, obj_wall)) 
{
    while (!place_meeting(x, y + sign(vspd), obj_wall))
        y += sign(vspd);
    vspd = 0;
}
y += vspd;