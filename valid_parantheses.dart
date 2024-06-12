class Solution {
  bool isValid(String s) {
    Map<String, int> values = {
      '(': 1,
      ')': -1,
      '[': 2,
      ']': -2,
      '{': 3,
      '}': -3,
    };
    int currentValue = 0;
    


    return true;
  }
}

void main() {
  Solution solution = new Solution();
  print(solution.isValid('()]['));
}
