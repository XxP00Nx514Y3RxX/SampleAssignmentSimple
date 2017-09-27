//GOAL: make a 'traffic light' simulator. For now, just have the light 
// changing according to time. You may want to investigate the millis()
// function at processing.org/reference.
//int second = millis();



void setup() {
  size(600, 600);
  rect(10, 10, 100, 100);
}

void draw() {
  background(255);
  drawOutlineOfLights();
}

void drawOutlineOfLights() {
  int second = millis();
  //box
  rectMode(CENTER);
  fill(0);
  rect(width/2, height/2, 75, 200, 10);
  
  //lights
  if (second > 3000){
  //fill(0, second % 3000, 0);
    fill(0, 255, 0);
      if (second > 6000){
        fill (255);
      }
  }
  else{
    fill(255);
  }
  ellipse(width/2, height/2 - 65, 50, 50); //top
  if (second > 6000){
  //fill(0, second % 3000, 0);
    fill(255, 255, 0);
    if (second > 9000){
      fill(255);
    }
  }
  else{
    fill(255);
  }
  //fill(second % 3000, 255, 0);
  ellipse(width/2, height/2, 50, 50); //middle
  //fill(second % 3000, 0, 0);
  if (second > 9000){
  //fill(0, second % 3000, 0);
    fill(255, 0, 0);
    if (second > 12000){
      fill(255);
      second = millis(0);
    }
  }
  else{
    fill(255);
  }
  ellipse(width/2, height/2 + 65, 50, 50); //bottom
}



//if millis() > second) {
//  fill(0);
//}