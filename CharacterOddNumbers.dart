class Solution {
  String generateTheString(int n) {
    if (n % 2 == 1) {
      return List.filled(n, 'a').join();
    } else {
      return List.filled(n - 1, 'a').join() + 'b';
    }
  }
}

void main() {
  Solution solution = Solution();
  print(solution.generateTheString(8));
}
