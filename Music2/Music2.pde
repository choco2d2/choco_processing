import org.gicentre.handy.*;

import ddf.minim.*;
import ddf.minim.analysis.*;

Draw_circle draw_circle;

Minim minim;
AudioPlayer song;

HandyRenderer h;

void setup(){
  size(640,360);
  fill(0, 0, 255);
  smooth();
  
  setup_music();
  
  draw_circle = new Draw_circle();
  
  h = new HandyRenderer(this);

}

void draw(){
  background(0);
  draw_circle.draw();
}
