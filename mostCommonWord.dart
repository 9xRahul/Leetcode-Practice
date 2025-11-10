class Solution {
  String mostCommonWord(String paragraph, List<String> banned) {
    Map<String, int> wordsMap = {};

    for (String s in paragraph.split(" ")) {
      String word = "";
      bool isAlphabetOnly = true; // kept to stay close to your structure

      for (int i = 0; i < s.length; i++) {
        int code = s.codeUnitAt(i);

        if ((code >= 65 && code <= 90) || (code >= 97 && code <= 122)) {
          // build the current word (lowercased)
          word += s[i].toLowerCase();
        } else {
          // non-letter: commit the word collected so far, then reset
          if (word.isNotEmpty) {
            wordsMap[word] = (wordsMap[word] ?? 0) + 1;
            word = "";
          }
          isAlphabetOnly =
              false; // maintain your flag (not functionally needed now)
        }
      }

      // commit any trailing word at token end
      if (word.isNotEmpty) {
        wordsMap[word] = (wordsMap[word] ?? 0) + 1;
      }
    }

    // print(wordsMap); // debug

    String? opString;
    int maxCount = 0;

    for (var entry in wordsMap.entries) {
      final word = entry.key.toLowerCase();
      final count = entry.value;

      if (!banned.contains(word)) {
        if (count > maxCount) {
          maxCount = count;
          opString = word;
        }
      }
    }

    // fallback: if all counts == 1 or none picked, choose the first non-banned
    if (maxCount <= 1 && opString == null) {
      for (var entry in wordsMap.entries) {
        final word = entry.key.toLowerCase();
        if (!banned.contains(word)) {
          opString = word;
          break;
        }
      }
    }

    return opString ?? "";
  }
}

void main() {
  Solution sol = Solution();
  print(
    sol.mostCommonWord(
      "Bob hit a ball, the hit BALL flew far after it was hit.",
      [],
    ),
  );
}
