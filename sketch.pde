
void setup() {
    size(1024, 526);
}

var posx = 150;
var posy = 150;
var vx = 0;
var vy = 0;

void draw() {
    background(#000000);
    fill(#ff8899);
    vx = mouseX - posx;
    vy = mouseY - posy;
    speed = sqrt(vx * vx + vy * vy);
    posx = posx + vx/speed;
    posy = posy + vy/speed;
    rect(posx - 50, posy - 50, 100, 100);
    stroke(#ff88ff);
    line(posx, posy, mouseX, mouseY);
    ellipse(mouseX,mouseY, 10, 10);
}

