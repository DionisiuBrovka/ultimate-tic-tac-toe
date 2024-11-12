import 'package:get_it/get_it.dart';
import 'package:test_proj/services/game_service/game_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<GameService>(() => GameService());
}
