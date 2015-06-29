int Yellow;
int Red;
int Blue;
int Green;
int White;
int Grey;
color currentColor;
boolean typeIsRect;


void setup()
{
  size(700,600);
  background(255);
  frameRate(60);
  
  Yellow = color(247,231,45);
  Red = color(237,12,12);
  Blue = color(12,167,237);
  Green = color(80,165,20);
  White = color(255);
  Grey = color(200);
  currentColor = color(255);
}

void draw()
{
  stroke(5);
  smooth();
  
  fill(Grey);
  rect(10,10,260,100);
  
  fill(Yellow);
  rect(20,20,20,20);
  fill(Red);
  rect(80,20,20,20);
  fill(Green);
  rect(140,20,20,20);
  fill(Blue);
  rect(200,20,20,20);
  
  fill(White);
  rect(20,60,40,40); //the eraser
  
 fill(Yellow);
 ellipse(60,30,20,20);
 fill(Red);
 ellipse(120,30,20,20);
 fill(Green);
 ellipse(180,30,20,20);
 fill(Blue);
 ellipse(240,30,20,20);
  
  //Now if the mouse is pressed, paint
   if (mousePressed)
 {
   noStroke();
   fill(currentColor);
   if (typeIsRect)
   {
     
        if ((mouseX>140) && (mouseY>20) && (mouseX<190) && (mouseY<70))
     {
       rect(mouseX-25,mouseY-25,50,50);
     }
     else
     {
       rect(mouseX-10,mouseY-10,20,20);
     }
   }
   else
   {
     ellipse(mouseX,mouseY,20,20);
   }
 }
}

void mousePressed()
{
//ractangles
if ((mouseX>20) && (mouseY>20) && (mouseX<40) && (mouseY<40))
 {
   typeIsRect = true;
   currentColor = color(Yellow);
 }
 if ((mouseX>80) && (mouseY>20) && (mouseX<100) && (mouseY<40))
 {
   typeIsRect = true;
   currentColor = color(Red);
 }
 if ((mouseX>140) && (mouseY>20) && (mouseX<160) && (mouseY<40))
 {
   typeIsRect = true;
   currentColor = color(Green);
 }
 if ((mouseX>200) && (mouseY>20) && (mouseX<220) && (mouseY<40))
 {
   typeIsRect = true;
   currentColor = color(Blue);
 }
 if ((mouseX>40) && (mouseY>40) && (mouseX<100) && (mouseY<100))
 {
   typeIsRect = true;
   currentColor = color(White);
 }
 
//elipses
 if ((mouseX>60) && (mouseY>20) && (mouseX<70) && (mouseY<40))
 {
   typeIsRect = false;
   currentColor = color(Yellow);
 }
 if ((mouseX>120) && (mouseY>20) && (mouseX<130) && (mouseY<40))
 {
   typeIsRect = false;
   currentColor = color(Red);
 }
 if ((mouseX>180) && (mouseY>20) && (mouseX<190) && (mouseY<40))
 {
   typeIsRect = false;
   currentColor = color(Green);
 }
 if ((mouseX>240) && (mouseY>20) && (mouseX<250) && (mouseY<40))
 {
   typeIsRect = false;
   currentColor = color(Blue);
 }
}
