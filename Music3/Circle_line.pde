class Draw_circle{
  void draw(){
    
    translate(width / 2, height / 2);

    stroke(lerpColor(c1, c2, map(song.mix.level(), 0, 0.03, 0, 1)));
    
    strokeWeight(2.0);
    
    
    //right
    for(int i = 0; i <= fft.specSize() / 2; i++){
      float r = song.right.level();
      float angle = HALF_PI - map(i, 0, fft.specSize() / 2, 0, PI) * r;
      float len = fft.getBand(i) * 50;
      line(radious * cos(angle), radious * sin(angle), (radious + len) * cos(angle), (radious + len) * sin(angle));
    }
    
    //left
    for(int i = 0; i <= fft.specSize() / 2; i++){
      float l = song.left.level();
      float angle = HALF_PI + map(i, 0, fft.specSize() / 2, 0, PI) * l;
      float len = fft.getBand(i) * 50;
      line(radious * cos(angle), radious * sin(angle), (radious + len) * cos(angle), (radious + len) * sin(angle));
    }
    

  }
  
  
}
