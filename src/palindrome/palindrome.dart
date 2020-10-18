import 'dart:io';
import '../utils/colors.dart';

bool palindrome(String str) {
  String reversed = str.split('').reversed.join();
  return str == reversed;
}

void main() {
  print(title('-------------------------   P A L I N D R O M E   -------------------------'));
  print(sub_title('Palindromes are strings that form the same word if it is reversed\n'));

  print('Type the string:');
  var str = stdin.readLineSync();

  bool isPalindrome = palindrome(str);

  if (isPalindrome) {
    print(success('\nThe string ($str) is a palindrome'));
  } else {
    print(error('\nThe string ($str) is not a palindrome'));
  }

  print(title('-------------------------   P A L I N D R O M E   -------------------------'));
}