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

public class grayscaleFilter extends PApplet {

//\u30b0\u30ec\u30fc\u30b9\u30b1\u30fc\u30eb\u30d5\u30a3\u30eb\u30bf\u306e\u4f5c\u6210
//Processing\u5074\u3067\u306f\u753b\u50cf\u306e\u8aad\u307f\u8fbc\u307f\u3084\u30b9\u30b1\u30c3\u30c1\u306e\u30b5\u30a4\u30ba\u3092\u9001\u308b
PShader sd;
PImage img;


public void setup(){
  //\u30ec\u30f3\u30c0\u30e9\u6307\u5b9a

  sd = loadShader("index.glsl");//glsl\u3092\u8aad\u307f\u8fbc\u307f
  sd.set("size", PApplet.parseFloat(width),PApplet.parseFloat(height));//\u30ad\u30e3\u30f3\u30d0\u30b9(\u753b\u50cf)\u306e\u30b5\u30a4\u30ba\u3092floaat\u578b\u3067\u6e21\u3059

  img = loadImage("test.jpg");//\u753b\u50cf\u8aad\u307f\u8fbc\u307f

}

public void draw(){
  image(img, 0,0);//\u753b\u50cf\u306e\u5de6\u4e0a\u306e\u9802\u70b9\u3092\u539f\u70b9\u306b\u914d\u7f6e


  filter(sd);//shader\u51e6\u7406\u3092\u52a0\u3048\u308b
}
  public void settings() {  size(640,480, P2D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "grayscaleFilter" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
