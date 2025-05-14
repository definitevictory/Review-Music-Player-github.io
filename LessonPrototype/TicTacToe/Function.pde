Boolean FirstTurn = true;
float timeLeft;
Boolean CheckforWin(int a, int b, int c) {
  if (Boards[a] !=0 && Boards[a] == Boards[b] && Boards[a] == Boards[c]) {
    WinnerNumber = Boards[a];
    return true;
  }
  return false;
}
Boolean AiCheckForWin (int a, int b, int c, int symbol) {
  if (Boards[a] == symbol && Boards[b] == symbol && Boards[c] ==0) {
    Boards[c] = 2;
    X = true;
    return true;
  }
  if (Boards[b] == symbol && Boards[c] == symbol && Boards[a] ==0) {
    Boards[a] = 2;
    X = true;
    return true;
  }
  if (Boards[a] == symbol && Boards[c] == symbol && Boards[b] ==0) {
    Boards[b] = 2;
    X = true;
    return true;
  }
  return false;
}
void AiHardMode() {
  

  for (int i = 0; i<3; i++) {
    if (AiCheckForWin(i*3, i*3+1, i*3+2, 2)) return;
    if (AiCheckForWin(i, i+3, i+6, 2)) return; //ai win
  }
  if (AiCheckForWin (0, 4, 8, 2)) return;
  if (AiCheckForWin (2, 4, 6, 2)) return;

  //keep in this order so AI goes for win first
  for (int i = 0; i<3; i++) {
    if (AiCheckForWin(i*3, i*3+1, i*3+2, 1)) return;
    if (AiCheckForWin(i, i+3, i+6, 1)) return; //prevent win
  }
  if (AiCheckForWin (0, 4, 8, 1)) return;
  if (AiCheckForWin (2, 4, 6, 1)) return;




  if ( FirstTurn ==true) {

       if (FirstTurn ==true){
         if (Boards[4] ==0){
       Boards[4] = 2;
        X = true;
        FirstTurn = false;
      return;}
       else {
    int[] corners =  {0, 2, 6, 8};

    for (int i = corners.length - 1; i > 0; i--) {
    int a = int(random(0, i + 1)); // Generate a random index (ai)
    int temp = corners[i];
    corners[i] = corners[a];
    corners[a] = temp;
}
    
    for (int i : corners) {
      if (Boards[i] ==0) {
        Boards[i] =2;
        X= true;
        FirstTurn =false;
        return;
      }
    }
  } }}
  
  


 if (FirstTurn ==false){
  for (int i = 0; i<9; i++) {
    if (Boards[i] ==0) {
      Boards[i] = 2;
      X=true;
      break;
    }
  }
}}


void DelayForGameEnd() {
int RwTime = 0;
int TimeLimit = 1000;;
int timeLeft = 0;
    int timePassed = millis()- RwTime;
    timeLeft = max(TimeLimit - timePassed, 0);

         //doesn't work fix tmr
}
