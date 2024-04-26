int x;
int y; 
float vx = 5; 
float vy = 5;
int radias = 10;
int boxW = 10;
int boxH = 200;
int y1 = height/2;

void setup(){
    size(960,740);
    rectMode(CENTER);   
    x = width/2;
    y = height/2;
}
void draw(){
    background(0);
    fill(255);
    rect(width-boxW, mouseY, boxW, boxH);
if(keyPressed){
    if(keyCode == UP){
        y1-=5;
    }
    if(keyCode == DOWN){
        y1+=5;
    }        
    if(key == 'e'){
        noLoop();
    }
     
    
}      
    
    fill(255);
    rect(boxW, y1, boxW, boxH );

    fill(255,0,0);
    ellipse(x, y, radias*2, radias*2 );

    x+=vx;
    y+=vy;

    if(x-radias < 0){
        fill(0,0,255);
        ellipse(width/2,height/2,width,height);
        vx *= -1;
    } 
    if(x+radias >width){
        vx *= -1;
        fill(255,0,0);
        ellipse(width/2,height/2,width,height);
    }
    if(y-10-radias < 0 || y+10+radias > height){
        vy *= -1;
    }
    if(y+radias < mouseY+boxH/2 && y-radias > mouseY-boxH/2 && x+radias+10 > width-boxW){
        vx *= -1;
    }
    if(y+radias < y1+boxH/2 && y-radias > y1-boxH/2 && x-radias-10 < boxW){
        vy *= -1;
    }
    
}    

void mousePressed(){
        loop();
    }




