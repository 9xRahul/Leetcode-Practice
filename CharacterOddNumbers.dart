class Solution {
  String generateTheString(int n) {
    String chars = "abcdefghijklmnoprstuvwxyz";

    String op = "";

    List<String> charsArray = chars.split('');
    int count = 0;

    int cycle = 1;

    int countN = 1;

    for (int i = 0; i < n; i++) {
      op += charsArray[count] * countN;
      if (i == 25) {
        cycle = 2;

        if (cycle % 2 == 0) {
          countN = 2;
        }
      } else {
        count++;
      }
    }

    print(op);
    return "";
  }
}

void main() {
  Solution solution = Solution();
  print(solution.generateTheString(8));
}
