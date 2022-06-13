void game(){
  
  background(#A04542);
  opening.play();
  
  tactileRectRed(850,50,100,100);
  rect(850,50,100,100);
  
  
  stroke(#E04944);
  
  //draw paddles
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  
  //move paddles
  if(wkey == true) lefty = lefty - 7;
  if(skey == true) lefty = lefty + 7;
  
  if(AI == false){
  if(upkey == true) righty = righty - 7;
  if(downkey == true) righty = righty +7;
  } else {
  if(ballx > 500){
    if(bally > righty){
     righty = righty +6;
    } else {
     if(bally < righty){
       righty = righty -6;
     }
      
    }
    
    
  }
  /*
  if ball is on the right side{
  if ball is above the right paddle move up
  if ball is below the right paddle move down
  }
  
  */
  }
  //draw ball
  circle(ballx, bally, balld);
  

  
  //bouncing
  if(dist(ballx, bally, rightx, righty) <= 225){
    vx = (ballx - rightx)/17;
    vy = (bally - righty)/17;
    
  }
  if(dist(ballx, bally, leftx, lefty) <= 225){
    vx = (ballx - leftx)/17;
    vy = (bally - lefty)/17;
    
  }
  
  //border bounces
  if(ballx <= ballx/2 || ballx >= width + ballx/2){
   vx = vx * -1;
  }
  
  if(bally <= balld/2 || bally >= height - balld/2){
   vy = vy * -1; 
  }
  
  //paddle restrictions
  if(righty <= 62.5){ 
   righty = 62.5;
  }
  
  if(righty >= 937.5){
   righty = 937.5; 
  }
  
  if(lefty <= 62.5){
   lefty = 62.5; 
  }
  
  if(lefty >= 937.5){
   lefty = 937.5; 
  }
  
  //62.5

  
  
  //points
  //scoreboard
  textFont(vintage2);
  textSize(50);
  fill(#FFFFFF);
  text(leftscore, width/4, 100);
  text(rightscore, 3*width/4, 100);
  text(timer, 3*width/4, 900);
  timer = timer - 1;
  fill(255);
  
  //ball movement------------------------------
  if(timer < 0){
  ballx = ballx + vx;
  bally = bally + vy;
  
  }
    
  
  //scoring points
  if(ballx < 0) {
   rightscore = rightscore + 1;
   ballx = width/2;
   bally = height/2;
   
   timer = 50;
   vx = random(-5, 5);
   vy = random(-5, 5);   
   score.play();
   score.rewind();
   
  }
  
  if(ballx > 1000) {
   leftscore = leftscore + 1;
   ballx = width/2;
   bally = height/2;
   
   timer = 50;
   vx = random(1, 5);
   vy = random(1, 5);
   score.play();
   score.rewind();
  
  }
 
 
 if(leftscore >= 3){
  mode = GAMEOVER;
  win.play();
  opening.pause();
  opening.rewind();
 }

 
 if(rightscore >= 3){
  mode = GAMEOVER;
  win.play();
  opening.pause();
  opening.rewind();
  
 }
  
}

void gameClicks(){  
  
  //tactileRectRed(850,50,100,100);
  if(mouseX > 850 && mouseX < 850+100 && mouseY > 50 && mouseY <50+100){
   
    mode = PAUSE;
    opening.pause();
  
    
  }
  

}
