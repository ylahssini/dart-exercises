import 'dart:io';
import '../utils/colors.dart';

class Pyramid {
  int _size;
  String _character = '#';

  Pyramid(this._size, String character) {
    this._character = character == '' ? '#' : character[0];
  }

  void display() {
    int cols = (_size * 2) - 1;
    cols = cols % 3 == 0 ? cols : cols + 1;

    int index = 1;
    for (var i = 0; i < _size; i++) {
      List<String> row = List.filled(cols, ' ');
      List<String> chart_row = List.filled(index, _character);

      int center_of_row = (cols / 2).round().toInt();
      int center_of_chart = (index / 2).round().toInt();

      int end = center_of_row + center_of_chart - 1;
      int start = end - chart_row.length;

      row.setRange(start, end, chart_row);
      print(row.join());

      index += 2;
    }
  }
}

void main() {
  print(title('-------------------------   P Y R A M I D   -------------------------'));
  print(sub_title('Draw pyramid\n'));

  print('Type the based one character that show in pyramid (if not, it will take #):');
  var character = stdin.readLineSync();

  print('Type the number of rows in pyramid:');
  var rows = stdin.readLineSync();

  var p = Pyramid(int.parse(rows), character);
  p.display();

  print(title('-------------------------   P Y R A M I D   -------------------------'));
}