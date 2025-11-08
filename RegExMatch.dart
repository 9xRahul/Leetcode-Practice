class Solution {
  bool isMatch(String s, String p) {
    final regExp = new RegExp('$p');
    return s == regExp.stringMatch(s);
  }
}

void main() {
  Solution sol = Solution();
  print(sol.isMatch("a+a", "a+a"));
}
