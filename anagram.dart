import 'dart:io';

bool anagram(String str_a, String str_b) {
  var reg_cleaner = new RegExp(r'[!:;, ~"/*+-_=.]');
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

void main() {
  if (anagram('hi t;he**re', 'th[]e,***re hi')) {
    print('The two words are anagrams to eachother');
  } else {
    print('No, those two words are not anagrams of eachother');
  }
}