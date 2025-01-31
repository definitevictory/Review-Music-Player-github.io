void MUSICA () {
  //
  //
  if ( playlist.isLooping() && playlist.loopCount()!=-1 ) println("There are", playlist.loopCount(), "loops left.");
  if ( playlist.isLooping() && playlist.loopCount()==-1 ) println("Looping Infinitely");

  if (!playlist.isPlaying()) println("nothing is playing pick a song.");
  if ( playlist.isPlaying() && !playlist.isLooping() ) println("Play Once");

  //playlist.loop(0); //only play beginning over and over
  if ( playlist.isPlaying() ) {
    if ( !playlist.isPlaying() && looping==true ) looping=false; //stops loop if no song playing
    //Empty IF, IS FALSE
  } else if (looping == false && !playlist.isPlaying() && playlist.length() < 60000) {
    playlist.rewind();//pain minutes in 3 , 180second, 180 000 ms. if time remaining less thatn, restart
    //true if song less than something seconds stop, if greater then restart
  } else if (looping == false && !playlist.isPlaying() && (playlist.position() > playlist.length()*0.8)) {
    playlist.rewind();
  }
  //println("umu", playlist.position(), "songLength", playlist.length());
  if ( !playlist.isPlaying() && pause==false ) { // error: else required , stop and pause do same thing broken. Boolean will fix
    playlist.pause();
    playlist.rewind();

      if (randomMusic==true) currentSong =int(random(numberMusicSongs - numberMusicSongs, numberMusicSongs));
      else {
        if (currentSong >=2) {
          currentSong=0;
        } else {
          currentSong+=1;
        }
    playlist =  minim.loadFile( filePathNameMusic[currentSong] );
    playlist.play();
    println(currentSong);
    println("awaaa");
    looping=false;
    LoopTimes=1;
  }
}}
