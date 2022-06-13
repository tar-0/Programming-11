void intro(){
  
  theme.play();
  background(#C47C7B);
  
  textAlign(CENTER,CENTER);
  textFont(vintage);
  textSize(100);
  text("Voltorb Berry Tossing", 500,300);
  text("Simulator", 500,400);
 

  
  //start button
  
  strokeWeight(8);
  
  fill(#FFFFFF);
  
  tactileRectRed(575,600,275,125);
  rect(575,600,275,125); //right
  
  tactileRectRed(150,600,275,125);
  rect(150,600,275,125); //left
  

  textFont(ter);
  fill(#D31E17);
  textSize(50);
  text("2 Player", 712.5, 662.5);
  text("1 Player", 282.5, 662.5);
  fill(255);
  
  
  
}

void introClicks(){
  
 if(mouseX > 150 && mouseX < 150+275 && mouseY > 600 && mouseY < 600+125){
   
   mode = GAME;
   leftscore = 0;
   rightscore = 0;
   timer = 100;
   AI = true;
   theme.pause();
   theme.rewind();
   
 }
 
 if(mouseX > 575 && mouseX < 575+275 && mouseY > 600 && mouseY < 600+125){

   mode = GAME;
   leftscore = 0;
   rightscore = 0;
   timer = 100;
   AI = false;
   theme.pause();
   theme.rewind();
   
 }
  
}
