
void setup() {
    size(1024, 526);
}

var posx = 150;
var posy = 150;
var vx = 0;
var vy = 0;
var DotExists = 1;
var prikker =[{x : 10, y : 20},
    {x : 79, y : 97},
    {x : 246, y : 166},
    {x : 79, y : 97},
    {x : 362, y : 246},
    {x : 134, y : 210},
    {x : 303, y : 94},
    {x : 90, y : 349},
    {x : 244, y : 322},
    {x : 366, y : 173}];


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
    for ( var i = 0; i <prikker.length; i ++){
        fill(255, 0, 0);
        ellipse(prikker[i].x, prikker[i].y, 10, 10);
    }
}
