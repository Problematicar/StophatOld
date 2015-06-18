if keyboard_check(ord("A")) and hspeed > -3 hspeed -= hspd;
if keyboard_check(ord("D")) and hspeed < 3 hspeed += hspd;
if keyboard_check(ord("S")) and vspeed < 3 vspeed += 0.5;

if global.scr >= 5 hspd = global.scr * 0.01;
if global.scr < 5 and global.scr != 0 hspd = 0.05;
if global.scr = 0 hspd = 0

if hspeed > 0 hspeed -= hspd * 0.3
if hspeed < 0 hspeed += hspd * 0.3

if vspeed > -3 vspeed -= wind;

if hspeed > -3 and hspeed < 3 hspeed += random_range(-wind * global.scr, wind * global.scr) * 0.05;

if y > 0 wind = (y - 4)*0.015 else wind = 0

if y + vspeed <= 4 and global.collisionh = 1 vspeed = 0;
if x + hspeed <= 4 and global.collisionv = 1 or x + hspeed >= room_width-4 and global.collisionv = 1 hspeed = 0

if place_meeting(x+hspeed, y+vspeed, obj_you) hspeed *= -0.5;

if (scrcounter > 0)
{
scrcounter -=1;
}
else
{
if place_meeting(x+hspeed, y+vspeed+2, obj_you)
{
global.scr+=1
scrcounter = room_speed
vspeed *= -1;
}
}

if x > view_xview and x < view_xview + 100 and y > view_yview and y < view_yview + 100
{
if obj_black.image_alpha > 0 obj_black.image_alpha -= 0.01
}
else
{
if obj_black.image_alpha < 1 obj_black.image_alpha += 0.01
}