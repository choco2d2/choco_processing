void keyPressed(){
  //Start
  if(key == 'm'){
    song.play();
  }
  //Stop
  if(key == 's'){
    song.pause();
  }
  //From the beginning
  if(key == 'r'){
    song.rewind();
    song.play();
  }
}
