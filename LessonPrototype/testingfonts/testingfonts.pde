//awoweoawoawoawkdokoksokoakdoaskasodksaoakwo
//
String title = "skibidoi";
String footer = "k9w9w99w9w9w9w9w9w9";
float footerX,footerY,footerWidth,footerHeight;
float titleX, titleY, titleWidth,titleHeight;
//
fullScreen();
int appWidth = width;
int appHeight = height;
int shorterSide = (appWidth > appHeight) ? appHeight : appWidth;

/*println("start of consol");
String[] fontList = PFont.list();
printArray(fontList);*/
PFont titleFont = createFont("InkFree-48", shorterSide);
titleX = appWidth*1/4;
titleY = appHeight*1/4;
titleWidth =appWidth*1/2 ;
titleHeight = appHeight*1/10;
footerX = appWidth*1/4 ;
footerY = appHeight*3/4;
footerWidth = appWidth*2/3;
footerHeight = appHeight*1/10;
rect(titleX, titleY, titleWidth,titleHeight);
rect(footerX,footerY,footerWidth,footerHeight);
text(title,titleX, titleY, titleWidth,titleHeight);
text(footer,footerX,footerY,footerWidth,footerHeight);
float fontSize =10;
float inkfreeAspectRatio = fontSize / titleHeight;
