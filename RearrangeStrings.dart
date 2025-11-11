class Solution {
  String reformat(String s) {
    List<String> letters = [];
    List<String> digits = [];

    // Step 1: Separate characters into letters and digits
    for (var ch in s.split('')) {
      if (RegExp(r'[a-zA-Z]').hasMatch(ch)) {
        letters.add(ch);
      } else {
        digits.add(ch);
      }
    }

    // Step 2: Check if reformatting is possible
    if ((letters.length - digits.length).abs() > 1) {
      return "";
    }

    // Step 3: Start with whichever list is longer
    bool letterFirst = letters.length >= digits.length;

    String result = "";
    int i = 0;

    // Step 4: Merge alternately
    while (i < letters.length || i < digits.length) {
      if (letterFirst && i < letters.length) {
        result += letters[i];
      }
      if (i < digits.length) {
        result += digits[i];
      }
      if (!letterFirst && i < letters.length) {
        result += letters[i];
      }
      i++;
    }

    return result;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.reformat("covid201569"));
}
