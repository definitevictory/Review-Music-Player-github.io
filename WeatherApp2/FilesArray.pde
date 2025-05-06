

void Files() {
  String AbsolutePath = sketchPath();
  String MusicPath = "/../Music/";
  String musicDirectory = AbsolutePath+MusicPath;
//println( musicDirectory);
  File musicDirectoryB = new File(musicDirectory);
  File[] fileMusicNames = musicDirectoryB.listFiles();
  String [] Musicfiles = new String[fileMusicNames.length];
  int i = 0;
  for ( File file : fileMusicNames) {
    Musicfiles[i] = MusicPath + file.getName();
    i++;
  }

  currentSong=0;
  playlist = new AudioPlayer[Musicfiles.length];
  while ( currentSong < Musicfiles.length){
    playlist[currentSong] = minim.loadFile( Musicfiles[currentSong]);
    currentSong++;
  }
  currentSong=0;
  playlist[currentSong].play();
  
  
  //
  String ImagePath = "/../images/MusicCovers/";
  String ImageDirectory = AbsolutePath + ImagePath;
  File ImageDirectoryB = new File(ImageDirectory);
  File[] fileImageNames = ImageDirectoryB.listFiles();
  String [] Imagefiles = new String[fileImageNames.length];
  

  i = 0;
  for (File file : fileImageNames) {
    Imagefiles[i] = ImagePath + file.getName();
  i++;}
//finish tmr, try making a function (a,b) to auto do the size of images. then plug it into the i=0 i++ thingy
  
  }
