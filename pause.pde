void pause(){
  tactileRectRed(850,50,100,100);
  rect(850,50,100,100); 
  
  textAlign(CENTER,CENTER);
  textFont(vintage);  
  fill(#FFFFFF);
  textSize(200);
  text("PAUSE", 500,675);
  text("PAUSE", 500,325);
  fill(#FFFFFF);
}

void pauseClicks(){
  if(mouseX > 850 && mouseX < 850+100 && mouseY > 50 && mouseY <50+100){
   
    mode = GAME;
      
  }  
}
