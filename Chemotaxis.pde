
Bacteria[] Demons;

//declare bacteria variables here
void setup() {
   size(800, 800);
   background(255);
   Demons = new Bacteria[5];
   for(int i = 0; i < Demons.length; i+=1){
      Demons[i] = new Bacteria();
   }
}

void draw() {
   fill(255, 255, 255, 5);
   rect(0, 0, 800, 800);
   for(int i = 0; i < Demons.length; i+=1){
      Demons[i].walk();
      Demons[i].show();
   }
}


class Bacteria {//lots of java!
   int startX, startY, ranX, ranY, color;
   Bacteria() {
   Color = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random*256));
   startX = 400;
   startY = 400;
   ranX = 0;
   ranY = 0;
}

void walk(){
   startX = startX + ranX;
   startY = startY + ranY;
   ranX = (int)(Math.random()*12-6);
   ranY = (int)(Math.random()*12-6);
   System.out.println(ranX);
   System.out.println(ranY);
}

void show(){
   stroke(Color);
   strokeWeight(3);
   line(startX, startY, startX+ranX, startY+ranY);
   }
}

