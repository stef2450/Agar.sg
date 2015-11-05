
void setup() {
    size(1024, 526);
}

var posx = 150;
var posy = 150;
var vx = 0;
var vy = 0;
var DotExists = 1;

void draw() {

    //Ellipse
    background(#000000);
    fill(#ff8899);
    vx = mouseX - posx;
    vy = mouseY - posy;
    speed = sqrt(vx * vx + vy * vy);
    posx = posx + vx/speed;
    posy = posy + vy/speed;
    ellipse(posx, posy, 100, 100);
    stroke(#ff88ff);
    fill(#fde201);
    ellipse(mouseX,mouseY, 10, 10);

    if (DotExists) {
        //Dot
        fill(#fa01fd);
        ellipse(400, 100, 10, 10);
        var dx = 400 - posx;
        var dy = 100 - posy;
        var d = sqrt(dy * dy + dx * dx);
        
        if (d < 50) {
                DotExists = 0;
        }
    }
}
