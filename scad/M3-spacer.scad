
$inner = 3.2;
$outer = $inner+2;
$height = 5;
$fn = 90;

union()
{
    cylinder(r=$outer, h=$height);
    translate([0,0,-$height/2]) cylinder(r=$inner, h=$height*2);
}

