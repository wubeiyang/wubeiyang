import processing.serial.*;
Serial duankou;
float data;
PImage photo;
void setup()
{
  size(1280,871);
  photo=loadImage("1.jpg");
  duankou = new Serial(this,"COM3",9600);
}

void draw()
{
  background(0);
  if(duankou.available()>0)
  {
    data=duankou.read();
    println(data);        
  }
  tint(data);  
  image(photo,0,0);
}