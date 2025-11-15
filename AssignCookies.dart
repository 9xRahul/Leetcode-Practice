class Solution {
  int findContentChildren(List<int> g, List<int> s) {
    int gLength = g.length;
    int sLength = s.length;
    int count = 0;

    if (gLength > sLength) {
      for (int i = 0; i < s.length; i++) {
        for (int j = 0; j < g.length; j++) {
          if (g[j] <= s[i] && s[i] != 0) {
            s[j] = 0;
            count++;
            break;
          }
        }
      }
    } else {
      for (int i = 0; i < gLength; i++) {
        for (int j = 0; j < s.length; j++) {
          if (g[i] <= s[j]) {
            s[j] = 0;
            count++;
            break;
          }
        }
      }
    }

    return count;
  }

  int findContentChildrenGreedy(List<int> g, List<int> s) {
    if (g.isEmpty || s.isEmpty) return 0;

    g.sort();
    s.sort();

    int i = 0;
    int j = 0;

    while (i < g.length && j < s.length) {
      if (s[j] >= g[i]) {
        i++;
      }
      j++;
    }

    return i;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.findContentChildren([10, 9, 8, 7,9], [5, 6, 7, 8]));
  print(sol.findContentChildrenGreedy([10, 9, 8, 7], [5, 6, 7, 8]));
}
