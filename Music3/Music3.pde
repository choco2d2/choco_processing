import ddf.minim.*;
import ddf.minim.analysis.*;

Draw_circle draw_circle;

Minim minim;
AudioPlayer song;
FFT fft;
int fftSize;

float radious = 80;
color c2 = color(255, 255, 100);
color c1 = color(127, 255, 212);


void setup(){
  size(360, 360);
  minim = new Minim(this);
  colorMode(HSB, 360, 100, 100, 100);
  smooth();
  
  setup_music();
  
  draw_circle = new Draw_circle();
  
  fftSize = 512;
  fft = new FFT(song.bufferSize(),song.sampleRate());
}

void draw(){
  background(0);
  draw_circle.draw();

}
