import ddf.minim.*;
import ddf.minim.analysis.*;

Draw_line draw_line;

Minim minim;
AudioPlayer song;

FFT fft;
int fftSize;

void setup(){
  size(640, 360, P2D);
  colorMode(HSB, 360, 100, 100, 100);
  smooth();
  
  setup_music();
  
  draw_line = new Draw_line();

  fftSize = 512;
  fft = new FFT(song.bufferSize(),song.sampleRate());
}

void draw(){
  background(0);
  draw_line.draw();
}
