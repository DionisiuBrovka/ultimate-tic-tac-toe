import 'package:test_proj/controllers/one_field_game_controller.dart';

class GameController {
  List<OneFieldGameController> oneFieldGames;
  int? selectedOneFieldGame;
  bool isAllOneFieldGamesSelected = true;

  GameController() : oneFieldGames = List.filled(9, OneFieldGameController());
}
