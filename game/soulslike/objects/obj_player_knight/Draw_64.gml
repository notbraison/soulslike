// HEALTH BAR
var barWidth = 200;//how wide bar is
var barHeight = 16;//how tall bar is
var xOffset = 20;//margin from screen left
var yOffset = 20;//margin from screen top

//Health percentage
var hpPercent = health/maxHealth;


//Background (gray bar)
draw_set_color(c_black);
draw_rectangle(xOffset-2,yOffset-2,xOffset+barWidth+2,yOffset+barHeight+2,false);

//Health Fill (green)
draw_set_color(c_green);
draw_rectangle(xOffset, yOffset, xOffset + (barWidth * hpPercent), yOffset + barHeight, false);

// Border
draw_set_color(c_white);
draw_rectangle(xOffset-2, yOffset-2, xOffset+barWidth+2, yOffset+barHeight+2, true);



// STAMINA BAR (below health)
var stamPercent = stamina / maxStamina;
var stamY = yOffset + 30; // draw below health bar

// Background
draw_set_color(c_black);
draw_rectangle(xOffset-2, stamY-2, xOffset+barWidth+2, stamY+barHeight+2, false);

// Stamina fill (yellow)
draw_set_color(c_yellow);
draw_rectangle(xOffset, stamY, xOffset + (barWidth * stamPercent), stamY + barHeight, false);

// Border
draw_set_color(c_white);
draw_rectangle(xOffset-2, stamY-2, xOffset+barWidth+2, stamY+barHeight+2, true);


