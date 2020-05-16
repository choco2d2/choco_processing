void keyPressed(){
  if(key == 'm'){
    song.play();
  }
  if(key == 's'){
    song.pause();
  }
  if(key == 'r'){
    song.rewind();
    song.play();
  }
}
