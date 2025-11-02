class Solution {
  int climbStairs(int n) {
    int a = 1, b = 1;

    for (int i = 0; i < n - 1; i++) {
      int c = a;
      a = a + b;
      b = c;
    }

    return (a);
  }
}

void main() {
  Solution solution = Solution();
  print(solution.climbStairs(8));
}
