

void Files(){
String AbsolutePath = sketchPath();
String MusicPath = "../Music/";
String musicDirectory = AbsolutePath+MusicPath;

File musicDirectoryB = new File(musicDirectory);
File[] fileMusicNames = musicDirectory.listFiles();
}
