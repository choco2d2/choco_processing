class Draw_circle{
  void draw(){
    float radiusL = song.left.level()*width;
    float radiusR = song.right.level()*width;
    //LeftCircle
    h.ellipse(width/4,height/2,radiusL,radiusL);
    //RightCircle
    h.ellipse(width*3/4,height/2,radiusR,radiusR);
  }
}
