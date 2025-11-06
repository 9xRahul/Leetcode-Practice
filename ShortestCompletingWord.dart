class Solution {
  String shortestCompletingWord(String licensePlate, List<String> words) {
    // Step 1: Extract letters (no regex, only ASCII check)
    List<int> countLetters(String s) {
      List<int> count = List.filled(26, 0);
      for (int i = 0; i < s.length; i++) {
        var c = s.codeUnitAt(i);
        // 'A'..'Z' or 'a'..'z'
        if (c >= 65 && c <= 90)
          count[c - 65]++;
        else if (c >= 97 && c <= 122)
          count[c - 97]++;
      }
      return count;
    }

    // Step 2: Count frequency of letters in license plate
    List<int> need = countLetters(licensePlate);

    // Step 3: Check if a word completes the license plate
    bool completes(List<int> wordCount) {
      for (int i = 0; i < 26; i++) {
        if (wordCount[i] < need[i]) return false;
      }
      return true;
    }

    String result = '';
    for (String word in words) {
      List<int> wc = countLetters(word);
      if (completes(wc)) {
        if (result.isEmpty || word.length < result.length) {
          result = word;
        }
      }
    }

    return result;
  }
}

void main() {
  Solution solution = Solution();
  print(
    solution.shortestCompletingWord("1s3 PSt", [
      "step",
      "steps",
      "stripe",
      "stepple",
    ]),
  );
}
