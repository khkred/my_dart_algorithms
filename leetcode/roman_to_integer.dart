class Solution {
  int romanToInt(String s) {
    List<String> romans = ['I', 'V', 'X', 'L', 'C', 'D', 'M'];

    Map<String, int> romanValues = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000
    };

    List<String> sSplit = [];

    for (int i = 0; i < s.length; i++) {
      sSplit.add(s[i]);
    }

    int temp = 0;

    List<int> values = [];
    for (int i = 0; i < sSplit.length - 1; i++) {
      temp = romanValues[sSplit[i]]!;
      if (temp < romanValues[sSplit[i + 1]]!) {
        temp = -temp;
        values.add(temp);
      } else {
        values.add(temp);
      }
    }

    values.add(romanValues[sSplit.last]!);

    int sum = values.fold(0, (a, b) => a + b);

    return sum;
  }
}
