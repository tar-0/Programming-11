void gameover(){
  background(#EA9693);
  win.play();
  textAlign(CENTER,CENTER);
  textFont(shotgun);
  textSize(100);
  
  strokeWeight(7);  
  
  tactileRect(550,600,300,125);
  rect(550, 600, 300, 125);

  tactileRect(150,600,300,125);
  
  rect(150, 600, 300, 125); 


  
  stroke(#FF8D8B);
  rect(0,450,1000,20);
  rect(0,250,1000,20);
  
  
  
  
  if(leftscore > rightscore){
    text("Player 1 Victory", 500,350);
    
    
   
    
  } else {
    text("Player 2 Victory", 500,350);
    
    
    
  }
  
}

void gameoverClicks(){
  
  if(mouseX > 150 && mouseX < 150+300 && mouseY > 600 && mouseY < 600+125){
   
    mode = GAME;
    win.pause();
    win.rewind();
    leftscore = 0;
    rightscore = 0;
    timer = 100;
    leftx = 0;
    lefty = height/2;
    leftd = 325;
    rightx = width;
    righty = height/2;
    rightd = 325;

    ballx = width/2;
    bally = height/2;
    balld = 125;    
  }
  
  if(mouseX > 550 && mouseX < 550+300 && mouseY > 600 && mouseY < 600+125){
     
    mode = INTRO;
    win.pause();
    win.rewind();
    
  }
  
}
