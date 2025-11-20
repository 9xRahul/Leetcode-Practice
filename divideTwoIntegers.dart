class Solution {
  int divide(int dividend, int divisor) {
    // Handle overflow
    const int INT_MAX = 2147483647;
    const int INT_MIN = -2147483648;

    if (dividend == INT_MIN && divisor == -1) {
      return INT_MAX; // overflow clamp
    }

    // Determine sign of result
    bool negative = (dividend < 0) ^ (divisor < 0);

    // Convert to positive (use 64-bit space to avoid overflow)
    int a = dividend.abs();
    int b = divisor.abs();

    int result = 0;

    while (a >= b) {
      int temp = b;
      int multiple = 1;

      // Double until exceeding dividend
      while ((temp << 1) <= a) {
        temp <<= 1;
        multiple <<= 1;
      }

      a -= temp;
      result += multiple;
    }

    return negative ? -result : result;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.divide(10, 3));
}
