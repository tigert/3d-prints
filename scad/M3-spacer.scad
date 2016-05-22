
$inner = 3.2;
$outer = $inner+2;
$height = 5;
$fn = 90;

module spacer($inner = 3, $thickness = 2, $height = 5) 
{
  difference()
  {
    cylinder(r=$inner+$outer, h=$height);
    translate([0,0,-$height/2]) cylinder(r=$inner, h=$height*2);
  }
}

spacer(6, 1, 10);

