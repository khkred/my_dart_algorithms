class Solution {
  String longestCommonPrefix(List<String> strs) {
    String firstString = strs[0];

    // print(firstString);

    int firstStringLength = firstString.length;

    int index = 0;

    bool isPrefix = true;

    List<String> prefixString = [];

    while (index < firstStringLength) {
      String currentPrefixChar = firstString[index];

      // print('Char at index: $index is $currentPrefixChar');

      for (var currentString in strs) {
        if (index >= currentString.length) {
          // print('Returning from here: ${prefixString.join()}');
          return prefixString.join();
        }

        isPrefix = currentPrefixChar == currentString[index];

        if (isPrefix == false) {
          return prefixString.join();
        }
      }

      //print('Prefix value at index: $index is $isPrefix');

      if (isPrefix) {
        //print('Adding $currentPrefixChar');

        prefixString.add(currentPrefixChar);
        index++;
      } else {
        break;
      }
    }
    return prefixString.join();
  }
}

void main() {
  var strs = ["c", "acc", "ccc"];

  Solution solution = Solution();

  print(solution.longestCommonPrefix(strs));
}
