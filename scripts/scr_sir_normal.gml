dir = sign(obj_tophat.x - x);
if global.scr > 0 hspeed += dir * -0.1
if hspeed != 0 image_speed = 0.3

if x+hspeed <= 6 or x+hspeed >= 95
{
hspeed = 0;
image_speed = 0;
image_index = 0;
}

if place_meeting(x+hspeed, y, obj_tophat) hspeed *= -1;

if hspeed > 1 hspeed -= 0.1
if hspeed < -1 hspeed += 0.1

if hspeed > 0 image_xscale = -1;
if hspeed < 0 image_xscale = 1;
