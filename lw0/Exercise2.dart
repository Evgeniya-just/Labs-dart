bool anagram(String word1, String word2) {
  RegExp sign = RegExp("[^a-zA-Zа-яА-Я]+");
  word1 = word1.replaceAll(sign, '');
  word2 = word2.replaceAll(sign, '');
  word1 = word1.toLowerCase();
  word2 = word2.toLowerCase();
  int j = word2.length - 1;
  for (int i = 0; i < word1.length && j >= 0; i++) {
    if (word1[i] != word2[j]) {
      return false;
    }
    if (word1.length != word2.length) {
      return false;
    }
    j--;
  }
  return true;
}

void main() {
  print(anagram('dneirf', 'Friend'));
  print(anagram('hello', 'bye'));
  print(anagram('d?neirf', 'Friend'));
}
