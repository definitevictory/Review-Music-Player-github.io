

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
  while ( currentSong < Musicfiles.length) {
    playlist[currentSong] = minim.loadFile( Musicfiles[currentSong]);
    currentSong++;
  }
  currentSong=0;
  playlist[currentSong].play();

}
void CoverImages(){
  //
  String AbsolutePath = sketchPath();
  String ImagePath = "/../images/MusicCovers/";
  String ImageDirectory = AbsolutePath + ImagePath;
  File ImageDirectoryB = new File(ImageDirectory);
  File[] fileImageNames = ImageDirectoryB.listFiles();
  String [] Imagefiles = new String[fileImageNames.length];
  int i;
  i = 0;
  for (File file : fileImageNames) {
    Imagefiles[i] = ImagePath + file.getName();
   
    IMG[i] = loadImage(Imagefiles[i]);
    int IMGWidth = IMG[i].width;
    int IMGHeight = IMG[i].height;
    float BiggerSideRatio = (IMGHeight >= IMGWidth) ? float(IMGWidth)/float(IMGHeight) : float(IMGHeight)/float(IMGWidth);
    Boolean IMGLandscape = (IMGWidth>IMGHeight)? true:false;
    if (IMGLandscape ==true) {
      IMGWidthChanged[i] = MusicIMGWidth;
      IMGHeightChanged[i] = (IMGHeight >= MusicIMGHeight) ? IMGWidthChanged[i]/BiggerSideRatio : IMGWidthChanged[i]*BiggerSideRatio;

      IMGXChanged[i] = MusicIMGX;
      float leftOverHeight = ( MusicIMGHeight - IMGHeightChanged[i])*1/2;
      IMGYChanged[i] = MusicIMGY + leftOverHeight;
    } else {
      IMGHeightChanged[i] = MusicIMGHeight;
      IMGWidthChanged[i] = (IMGWidth >= MusicIMGWidth) ? IMGHeightChanged[i]/BiggerSideRatio : IMGHeightChanged[i]*BiggerSideRatio;
      IMGYChanged[i] = MusicIMGY;
      float leftOverWidth = ( MusicIMGWidth - IMGWidthChanged[i])*1/2;
      IMGXChanged[i] = MusicIMGX + leftOverWidth;
       
    }
    i++;
  }

  //finish tmr, try making a function (a,b) to auto do the size of images. then plug it into the i=0 i++ thingy. finished holy took me 50 years to do this
}
