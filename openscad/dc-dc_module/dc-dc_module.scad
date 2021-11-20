module board() {
	cube([22.4, 17, 1.6]);
}

module holes() {
	translate([(1.27/2) + 0.8, (1.27/2) +  0.4,-0.1])
	cylinder(2, 1.27/2, 1.27/2, $fn=20);
	translate([0, (1.27)/2 + 0.4,-0.1])
	cylinder(2, 1.27/2, 1.27/2, $fn=20);
	
	translate([(1.27/2) + 0.8, (1.27/2) +  0.4 + 1.47,-0.1])
	cylinder(2, 1.27/2, 1.27/2, $fn=20);
	translate([0, (1.27)/2 + 0.4 + 1.47,-0.1])
	cylinder(2, 1.27/2, 1.27/2, $fn=20);

	translate([22.4 - ((1.27/2) + 0.8),0,-0.1]){
	translate([(1.27/2) + 0.8, (1.27/2) +  0.4,0])
	cylinder(2, 1.27/2, 1.27/2, $fn=20);
	translate([0, (1.27)/2 + 0.4,0])
	cylinder(2, 1.27/2, 1.27/2, $fn=20);
	}
	
	translate([22.4 - ((1.27/2) + 0.8),1.47,-0.1]){
	translate([(1.27/2) + 0.8, (1.27/2) +  0.4,0])
	cylinder(2, 1.27/2, 1.27/2, $fn=20);
	translate([0, (1.27)/2 + 0.4,0])
	cylinder(2, 1.27/2, 1.27/2, $fn=20);
	}

	translate([22.4 - ((1.27/2) + 0.8),17 - ((1.27/2) +  0.4)*2,-0.1]){
	translate([(1.27/2) + 0.8, (1.27/2) +  0.4,0])
	cylinder(2, 1.27/2, 1.27/2, $fn=20);
	translate([0, (1.27)/2 + 0.4,0])
	cylinder(2, 1.27/2, 1.27/2, $fn=20);
	}
	
	translate([22.4 - ((1.27/2) + 0.8),17 - (((1.27/2) +  0.4)*2) - 1.47,-0.1]){
	translate([(1.27/2) + 0.8, (1.27/2) +  0.4,0])
	cylinder(2, 1.27/2, 1.27/2, $fn=20);
	translate([0, (1.27)/2 + 0.4,0])
	cylinder(2, 1.27/2, 1.27/2, $fn=20);
	}

	translate([0,17 - ((1.27/2) +  0.4)*2,-0.1]){
	translate([(1.27/2) + 0.8, (1.27/2) +  0.4,])
	cylinder(2, 1.27/2, 1.27/2, $fn=20);
	translate([0, (1.27)/2 + 0.4,0])
	cylinder(2, 1.27/2, 1.27/2, $fn=20);
	}
	
	translate([0,17 - (((1.27/2) +  0.4)*2) - 1.47,-0.1]){
	translate([(1.27/2) + 0.8, (1.27/2) +  0.4,])
	cylinder(2, 1.27/2, 1.27/2, $fn=20);
	translate([0, (1.27)/2 + 0.4,0])
	cylinder(2, 1.27/2, 1.27/2, $fn=20);
	}
}

difference() {
	board();
	holes();
}


translate([2.5,2.5,1.6])
cube([10,10,3]);




module pin() {
	translate([0,0,0.72])
	cube([0.52,0.52,0.25]);
	translate([0,-0.27,0])
	cube([0.52,0.52,0.25]);
	translate([0,0,0.25])
	cube([0.52,0.25,0.72]);
}

module pins() {
	translate([0,-0.50,0]) {
		translate([0,0,0])
		pin();
		translate([1.27*1,0,0])
		pin();
		translate([1.27*2,0,0])
		pin();
		translate([1.27*3,0,0])
		pin();
	}
	
	translate([(3*1.27) + 0.52,0.50+3.9,0])
	rotate([0,0,180]) {
	translate([0,0,0])
	pin();
	translate([1.27*1,0,0])
	pin();
	translate([1.27*2,0,0])
	pin();
	translate([1.27*3,0,0])
	pin();
	}
}

module ic() {
	union() {
		translate([0,0,0.25])
		cube([5,3.9,1.44]);
		translate([0.29,0,0])
		pins();
	}
}
translate([13.5,10,1.6])
ic();
