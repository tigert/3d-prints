
$inner = 3.2;
$outer = $inner+2;
$height = 5;
$fn = 90;

module spacer($inner = 3, $thickness = 2, $height = 5) 
{
  difference()
  {
    cylinder(r=$inner+$thickness, h=$height);
    translate([0,0,-$height/2]) cylinder(r=$inner, h=$height*2);
  }
}

union()
{
    spacer(3.4, 2, 5);
    translate(22,0,0)
    {
        spacer(3.4, 2, 5);
    }
}