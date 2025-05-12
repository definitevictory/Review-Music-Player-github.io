Boolean CheckforWin(int a, int b, int c) {
  if (Boards[a] !=0 && Boards[a] == Boards[b] && Boards[a] == Boards[c]) {
    WinnerNumber = Boards[a];
    return true;
  }
  return false;
}
