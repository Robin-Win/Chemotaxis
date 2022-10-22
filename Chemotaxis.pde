//declare bacteria variables here
Bacteria[] Demons;
Food[] Guts;

void setup() {//initialize bacteria variables here
   size(800, 800);
   background(255);
   Demons = new Bacteria[5];
   Guts = new Food[1];
   for(int i = 0; i < Demons.length; i+=1){
      Demons[i] = new Bacteria();
   }
   for(int i = 0; i < Guts.length; i+=1){
      Guts[i] = new Food();
   }  
}

void draw() {//move and show the bacteria
   fill(255, 255, 255, 5);
   rect(0, 0, 800, 800);
   for(int i = 0; i < Robin.length; i++){
      Demons[i].hunt();
      Demons[i].show();
   }
   for(int i = 0; i < Guts.length; i+=1){
      Guts[i].show();
   } 
}

Class Guts {
   int ranX, ranY;
   void show() {
      fill(0, 0, 0);
      ellipse(mouseX, mouseY, 30, 30);
   }
}

class Bacteria {//lots of java!
   int startX, startY, ranX, ranY, color;
   Bacteria() {
   Color = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random*256));
   startX = (int)(Math.random()*800);
   startY = (int)(Math.random()*800);
   ranX = 0;
   ranY = 0;
   }

void hunt(){
   if(mouseX > startX){
      startX = startX + (int)(Math.random()*5)-1;
   } else if(mouseX < startX){
      startX = startX + (int)(Math.random()*5)-3;
   }
   if(mouseY > startY){
      startY = startY + (int)(Math.random()*5)-1;
   } else if(mouseY < startY){
      startY = startY + (int)(Math.random()*5)-3;
   }
}

void show(){
   stroke(Color);
   strokeWeight(3);
   line(startX, startY, startX+ranX, startY+ranY);
   }
}
