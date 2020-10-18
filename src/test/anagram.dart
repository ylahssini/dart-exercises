import 'package:test/test.dart';
import '../anagram/anagram.dart';

void main() {
  test('Correct case with simple strings', () {
    var str_a = 'azaz';
    var str_b = 'zaza';
  
    expect(true, anagram(str_a, str_b));
  });

  test('Incorrect case with simple strings', () {
    var str_a = 'the world';
    var str_b = 'world cup';
  
    expect(false, anagram(str_a, str_b));
  });

  test('Correct case with strings that contains punctuation & spaces', () {
    var str_a = '      a****za...:z    ,,,;;;..';
    var str_b = '    z ==  a  z**---++a';
  
    expect(true, anagram(str_a, str_b));
  });

  test('Incorrect case with strings that contains punctuation & spaces', () {
    var str_a = '      the wor****ld...:    ,,,;;;..';
    var str_b = '   wor? ==  ld  up**---++p';
  
    expect(false, anagram(str_a, str_b));
  });
}
