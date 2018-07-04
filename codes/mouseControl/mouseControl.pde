int hsub,d,g,start,s;

void setup(){
  fullScreen();
  hsub=height/3;
  
}

void draw(){
  if(g==0){
    background(200,0,0);
    fill(0,200,0);
    strokeWeight(3);
    ellipse(mouseX,mouseY,50,50);
    strokeWeight(5);
    println(width,height);
    line(0,height/3,width-width/5,height/3);
    line(width/5,hsub*2,width,hsub*2);
    if(mouseY+25>hsub   && mouseY-25<hsub+5   && start==1 && mouseX-25<width-width/5) g=1;
    if(mouseY+25>hsub*2 && mouseY-25<hsub*2+5 && start==1 && mouseX+25>width/5)         g=1;
    //text(s+"--"+start,width-100,100);
    
  }
  if(g==1){
    background(0,0,200);
    textMode(CENTER);
    textSize(50);
    text("GAME OVER!!!",width/2,height/2);
  }
  if(mousePressed)start=1;
  
  
  
}