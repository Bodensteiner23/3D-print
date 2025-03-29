x_pos_cube = 185;
y_pos_cube = 72;
z_pos_cube = 50;

x_pos_cyl1 = (x_pos_cube/10)*2.5;
y_pos_cyl1 = y_pos_cube/2;
z_pos_cyl1 = z_pos_cube+1;

x_pos_cyl2 = (x_pos_cube/10)*7.5;
y_pos_cyl2 = y_pos_cube/2;
z_pos_cyl2 = z_pos_cube+1;

r_cyl = 30; // 59mm durchmesser ca
h_cyl = 52;

x_pos_tri = x_pos_cube;
y_pos_tri = y_pos_cube/2;



difference() {
    cube([x_pos_cube, y_pos_cube, z_pos_cube]);

    translate([x_pos_cyl1, y_pos_cyl1, z_pos_cyl1]) {
        rotate([0, 180, 0]) {
            cylinder(r=r_cyl, h=h_cyl);
        }
    }

    translate([x_pos_cyl2, y_pos_cyl2, z_pos_cyl2]) {
        rotate([0, 180, 0]) {
            cylinder(r=r_cyl, h=h_cyl);
        }
    }
}

translate([0, 72, 0]) {
    rotate([90, 0, 0]) {
        linear_extrude(height = 72)
        polygon(points=[[185, 0], [185, 50], [203, 50]]);
    }
}

