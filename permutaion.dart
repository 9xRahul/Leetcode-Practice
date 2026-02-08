class Solution {
  void nextPermutation(List<int> nums) {
    int n = nums.length;
    if (n < 2) return;

    // 1. Find pivot index i
    int i = n - 2;
    while (i >= 0 && nums[i] >= nums[i + 1]) {
      i--;
    }

    // 2. If pivot exists, find index j to swap
    if (i >= 0) {
      int j = n - 1;
      while (nums[j] <= nums[i]) {
        j--;
      }
      _swap(nums, i, j);
    }

    // 3. Reverse the suffix
    _reverse(nums, i + 1, n - 1);
  }

  void _swap(List<int> a, int i, int j) {
    int temp = a[i];
    a[i] = a[j];
    a[j] = temp;
  }

  void _reverse(List<int> a, int l, int r) {
    while (l < r) {
      _swap(a, l, r);
      l++;
      r--;
    }
  }
}

void main() {
  Solution solution = Solution();

  List<int> nums = [1, 2, 3];
  print("Before: $nums");

  solution.nextPermutation(nums);

  print("After:  $nums");
}
B