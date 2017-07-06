String[] lineList;
StringList findWords = new StringList();
String[] words;

void processText() {
  for (int x = 0; x < lineList.length; x++) {
    String[] tempWords = split(lineList[x], " ");
    for (int y = 0; y < tempWords.length; y++) {
      if (addWord(tempWords[y])) {
        findWords.append(tempWords[y]);
      }
    }
  }
  
  words = findWords.array();
}

boolean addWord(String word) {
  if (word.length() < 4) {
    return false;
  }
  return true;
}