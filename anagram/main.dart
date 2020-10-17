import 'dart:io';

bool anagram(String str_a, String str_b) {
  var reg_cleaner = new RegExp(r'[.,\/#!$%\^&\*;:{}=\-_`~()]');
  String clean_str_a = str_a.toLowerCase().replaceAll(reg_cleaner, '');
  String clean_str_b = str_b.toLowerCase().replaceAll(reg_cleaner, '');
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

  if (str.trim() == '') {
    print('You must type the $order string!');
    return type_string(order);
  } else {
    return str;
  }
}

void main() {
  print('-----------------------------   A N A G R A M   -----------------------------');
  print('Check to see if two provided strings are anagrams of eachother.');

  String str_a = type_string('first');
  String str_b = type_string('second');

  if (anagram(str_a, str_b)) {
    print('The two words ($str_a, $str_b) are anagrams to eachother');
  } else {
    print('No, those two words are not anagrams of eachother');
  }
  print('-----------------------------   A N A G R A M   -----------------------------');
}