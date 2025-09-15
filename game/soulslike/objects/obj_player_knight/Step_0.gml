//get inputs
//keyboardcheck returns a 0 or 1 which is stored in variable and intepreted

rightKey = keyboard_check(ord("D"));
leftKey = keyboard_check(ord("A"));
jumpKeyPressed = keyboard_check_pressed(vk_space); 
sprintKey = keyboard_check(vk_shift);


//movement

//direction
//we can do righ-left because it is essentially a subtraction calculation were making if 1 move in that dir

moveDir = rightKey - leftKey;

//get xspd
if(sprintKey && stamina>0 && moveDir !=0){
xspd = moveDir * sprintSpeed;
//drain stamina when sprinting 
stamina -=.75;//stamina drain per frame when sprinting
} 
else
{
xspd = moveDir * moveSpeed;
}

//x collision
//this is to have precise collisions with walls 
var _subPixel = 0.5;

//if xspd is +ve we check 2 pixels ahead if wall is there stop moving , basically colliding, were checking 2 for precision
if place_meeting(x+xspd , y ,obj_wall)
{
	//scoot up to wall precisely
	//sign just checks if +ve or -ve
	//we use sign of xspd not moveDir bcoz 
	var _pixelCheck = -subPixel * sign(xspd);	//move by 2 subpixels , superprecise movement
	while !place_meeting(x+_pixelCheck,y,obj_wall)
	{
	x += _pixelCheck
	}
	
	//set xspd to 0 to collide
xspd = 0;	
}

//move

x+=xspd;

//y movement

yspd += grav;

if yspd > termVel {yspd = termVel;};

//Jump 
if jumpKeyPressed && place_meeting(x,y+1,obj_wall)
{
	yspd=jspd
}

//Y collision

if place_meeting(x,y+yspd,obj_wall)
{
//precise wall 
var _pixelCheck = _subPixel * sign(yspd);
while !place_meeting(x,y+_pixelCheck,obj_wall)
{
y += _pixelCheck;
}
yspd = 0;
}

y += yspd;

//STAMINA AND HEALTH REGEN LOGIC
// Regenerate stamina if below max
if (stamina < maxStamina) {
    stamina += staminaRegen;
    if (stamina > maxStamina) stamina = maxStamina;
}

// Health clamp (so it never goes negative)
if (health < 0) health = 0;
if (health > maxHealth) health = maxHealth;


