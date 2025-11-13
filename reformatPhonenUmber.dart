class Solution {
  String reformatNumber(String number) {
    // Step 1: Keep only digits
    String digits = number.replaceAll(RegExp(r'[^0-9]'), '');

    List<String> blocks = [];

    int i = 0;
    while (digits.length - i > 4) {
      blocks.add(digits.substring(i, i + 3));
      i += 3;
    }

    int remaining = digits.length - i;
    if (remaining == 4) {
      blocks.add(digits.substring(i, i + 2));
      blocks.add(digits.substring(i + 2, i + 4));
    } else {
      blocks.add(digits.substring(i));
    }

    return blocks.join('-');
  }
}

void main() {
  Solution solution = Solution();
  print(solution.reformatNumber("1-23-45 6"));
}
