import 'package:test/test.dart';
import '../palindrome/palindrome.dart';

void main() {
  test('Correct case', () {
    expect(true, palindrome('abba'));
  });

  test('Incorrect case', () {
    expect(false, palindrome('azaz'));
  });
}