
void setup() {
    size(1024, 526);
}
var posx = 150;
var posy = 150;
var vx = 0;
var vy = 0;
var DotExists = 1;
var prikker =[{x : 10, y : 20, color : #ff8899},
    {x : 79, y : 97, color : #ff8899 },
    {x : 246, y : 166, color : #ff8899},
    {x : 79, y : 97, color : #008899},
    {x : 362, y : 246, color : #ff8899},
    {x : 134, y : 210, color : #ff8899},
    {x : 303, y : 94, color : #ff8f09},
    {x : 90, y : 349, color : #ff8a99},
    {x : 244, y : 322, color : #0f8899},
    {x : 366, y : 173, color : #ff8899},
    {x : 529, y : 489, color : #f0f889},
    {x : 762, y : 10, color : #f00009},
    {x : 254, y : 725, color : #ffff09}];

int distance(int x1, int y1, int x2, int y2) {
    int a = x1 - x2;
    int b = y1 - y2;

    return sqrt(a * a + b * b);
}

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


    for ( var i = 0; i <prikker.length; i++) {
        if (distance(posx, posy, prikker[i].x, prikker[i].y) < 50) {
            prikker.splice(i,1);
        }
    }

    for ( var i = 0; i <prikker.length; i ++){
        fill(prikker[i].color);
        ellipse(prikker[i].x, prikker[i].y, 10, 10);
    }
}
