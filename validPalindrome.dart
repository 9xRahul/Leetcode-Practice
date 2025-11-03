class Solution {
  bool isPalindrome(String a) {
    String str = a.toLowerCase();
    List<String> s = [];

    String alpha = "abcdefghijklmnopqrstuvwxyz0123456789";

    for (int i = 0; i < str.length; i++) {
      if (alpha.contains(str[i])) {
        s.add(str[i]);
      }
    }

    print(s);

    String temp = s.toString();

    for (int i = 0, j = s.length - 1; i < s.length ~/ 2; i++, j--) {
      String temp = s[i];
      s[i] = s[j];
      s[j] = temp;
    }

    return (s.toString() == temp.toString());
  }
}

void main() {
  Solution sol = Solution();
  print(sol.isPalindrome("A man, a plan, a canal: Panama"));
}
