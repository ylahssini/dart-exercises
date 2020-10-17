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

String type_first_string() {
  print('Type the first string:');
  String str_a = stdin.readLineSync();

  if (str_a == '') {
    print('You must type the first string!');
    return type_first_string();
  } else {
    return str_a;
  }
}


String type_second_string() {
  print('Type the second string:');
  String str_b = stdin.readLineSync();

  if (str_b == '') {
    print('You must type the second string!');
    return type_second_string();
  } else {
    return str_b;
  }
}

void main() {
  print('-----------------------------   A N A G R A M   -----------------------------');
  print('Check to see if two provided strings are anagrams of eachother.');

  String str_a = type_first_string();
  String str_b = type_second_string();

  if (anagram(str_a, str_b)) {
    print('The two words are anagrams to eachother');
  } else {
    print('No, those two words are not anagrams of eachother');
  }
  print('-----------------------------   A N A G R A M   -----------------------------');
}