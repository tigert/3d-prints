$offset = 22;

module spacer($inner = 3.2, $thickness = 2, $height = 5) 
{
  difference()
  {
    cylinder(r=$inner+$thickness, h=$height);
    translate([0,0,-$height/2]) cylinder(r=$inner, h=$height*2);
  }
}

spacer();
translate([$offset,0,0]) { spacer(); }
translate([0,$offset,0]) { spacer(); }
translate([$offset,$offset,0]) { spacer(); }