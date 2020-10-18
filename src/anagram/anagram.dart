import 'dart:io';
import '../utils/colors.dart';

String puncless(String str) {
  var reg_cleaner = new RegExp(r'[ .,\/#!$%\^&\*;:{}=\-_`~()]');
  return str.trim().replaceAll(reg_cleaner, '');
}

bool anagram(String str_a, String str_b) {
  final String clean_str_a = puncless(str_a);
  final String clean_str_b = puncless(str_b);
  int similar_counter = 0;

  for (var i = 0; i < clean_str_a.length; i++) {
    if (clean_str_b.contains(clean_str_a[i])) {
      similar_counter += 1;
    }
  }

  return clean_str_a.length == similar_counter;
}

String type_string(String order) {
  print('Type the $order string:');
  String str = stdin.readLineSync();

  if (puncless(str) == '') {
    print(error('You must type the $order string (without space or punctuation)!'));
    return type_string(order);
  } else {
    return str;
  }
}

void main() {
  print(title('-----------------------------   A N A G R A M   -----------------------------'));
  print(sub_title('Check to see if two provided strings are anagrams of eachother.\n'));

  String str_a = type_string('first');
  String str_b = type_string('second');

  if (anagram(str_a, str_b)) {
    print(success('\nThe two words ($str_a, $str_b) are anagrams to eachother'));
  } else {
    print(error('\nNo, those two words ($str_a, $str_b) are not anagrams of eachother'));
  }

  print(title('-----------------------------   A N A G R A M   -----------------------------'));
}