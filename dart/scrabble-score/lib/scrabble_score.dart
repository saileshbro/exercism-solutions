int score(String word) =>
    word.toUpperCase().split('').fold(0, (sum, char) => sum + _charScore(char));

int _charScore(String char) {
  if (RegExp(r'[AEIOULNRST]').hasMatch(char)) return 1;
  if (RegExp(r'[DG]').hasMatch(char)) return 2;
  if (RegExp(r'[BCMP]').hasMatch(char)) return 3;
  if (RegExp(r'[FHVWY]').hasMatch(char)) return 4;
  if (RegExp(r'[K]').hasMatch(char)) return 5;
  if (RegExp(r'[JX]').hasMatch(char)) return 8;
  if (RegExp(r'[QZ]').hasMatch(char)) return 10;
  return 0;
}
