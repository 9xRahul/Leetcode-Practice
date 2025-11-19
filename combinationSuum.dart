class Solution {
  List<List<int>> combinationSum(List<int> candidates, int target) {
    List<List<int>> results = [];
    candidates.sort();

    void backtrack(int start, int remaining, List<int> current) {
      if (remaining == 0) {
        results.add(List.from(current));
        return;
      }
      if (remaining < 0) return;

      for (int i = start; i < candidates.length; i++) {
        current.add(candidates[i]);
        backtrack(i, remaining - candidates[i], current);
        current.removeLast(); // backtrack
      }
    }

    backtrack(0, target, []);
    return results;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.combinationSum([2, 3, 6, 7], 7));
}
