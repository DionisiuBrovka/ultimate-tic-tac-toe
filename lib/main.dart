import 'package:flutter/material.dart';
import 'package:test_proj/pages/game_page/game_page.dart';
import 'package:test_proj/services/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.from(
            colorScheme: ColorScheme.fromSeed(
                brightness: Brightness.dark, seedColor: Colors.greenAccent)),
        home: const GamePage());
  }
}
