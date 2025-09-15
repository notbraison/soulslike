// Get browser (display) size
var scr_w = display_get_width();
var scr_h = display_get_height();

// Maintain 16:9 aspect ratio
var scale = min(scr_w / target_w, scr_h / target_h);

var final_w = target_w * scale;
var final_h = target_h * scale;

// Center the game
var xoff = (scr_w - final_w) / 2;
var yoff = (scr_h - final_h) / 2;

// Apply scaling
//window_set_size(final_w, final_h);
//display_set_gui_maximize(final_w, final_h);
//surface_resize(application_surface, final_w, final_h);

//If you want it to always 100% fill the browser window (no black bars) even if it distorts slightly
window_set_size(display_get_width(), display_get_height());
surface_resize(application_surface, display_get_width(), display_get_height());
display_set_gui_size(display_get_width(), display_get_height());


// Optional: center if you don’t want top-left anchoring
window_set_position(xoff, yoff);


//Weapons script
scr_init_weapons();