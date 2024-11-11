import 'package:test_proj/models/cell.dart';

class OneFieldGameController {
  List<Cell> cells;

  bool isActive;

  bool isClose;
  Cell? win;

  OneFieldGameController(
      {this.cells = const [
        Cell.empty,
        Cell.empty,
        Cell.empty,
        Cell.empty,
        Cell.empty,
        Cell.empty,
        Cell.empty,
        Cell.empty,
        Cell.empty,
      ],
      this.isActive = false,
      this.isClose = false,
      this.win});

  void cheakGame() {
    if (cells[0] == cells[1] && cells[1] == cells[2]) {
      win = cells[0];
      isClose = true;
    } else if (cells[3] == cells[4] && cells[4] == cells[5]) {
      win = cells[3];
      isClose = true;
    } else if (cells[6] == cells[7] && cells[7] == cells[8]) {
      win = cells[6];
      isClose = true;
    } else if (cells[0] == cells[3] && cells[3] == cells[6]) {
      win = cells[0];
      isClose = true;
    } else if (cells[1] == cells[4] && cells[4] == cells[7]) {
      win = cells[1];
      isClose = true;
    } else if (cells[2] == cells[5] && cells[5] == cells[8]) {
      win = cells[2];
      isClose = true;
    } else if (cells[0] == cells[4] && cells[4] == cells[8]) {
      win = cells[0];
      isClose = true;
    } else if (cells[2] == cells[4] && cells[4] == cells[6]) {
      win = cells[2];
      isClose = true;
    }
  }

  void setCell({required int pos, required Cell value}) {
    cells[pos] = value;
    cheakGame();
  }
}
