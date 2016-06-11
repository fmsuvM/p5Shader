import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class firstShader extends PApplet {

PShader sd;

public void setup(){
  
  sd = loadShader("index.glsl");
}

public void draw(){
  background(200);
  
  shader(sd);
  translate(width/2,height/2);
  rect(-100,-100, 200,200);
}
  public void settings() {  size(640,480, P2D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "firstShader" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
