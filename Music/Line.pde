class Draw_line{
  void draw(){
    strokeWeight(2.0);
    fft.forward(song.mix);
    //RightSound
    for(int i = 0; i < fft.specSize(); i++){
      float r = song.right.level()*width;
      float x = map(i, 0, fft.specSize(), width/2, width);
      float y = map(fft.getBand(i) * r / 200, 0, 5.0, height, 0);
      float h = map(i, 0, fft.specSize(), 0, 180);
      
      stroke(h+60, 100, 100);
      line(x, height, x, y);
    }
    //LeftSound
    for(int i = 0; i < fft.specSize(); i++){
      float l = song.left.level()*width;
      float x = map(i, 0, fft.specSize(), width/2, 0);
      float y = map(fft.getBand(i) * l / 200, 0, 5.0, height, 0);
      float h = map(i, 0, fft.specSize(), 0, 180);
      
      stroke(h+60, 100, 100);
      line(x, height, x, y);
    }
  }
}
