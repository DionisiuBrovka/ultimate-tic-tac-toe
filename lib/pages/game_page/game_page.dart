import 'package:flutter/material.dart';
import 'package:test_proj/pages/game_page/game_page_controller.dart';
import 'package:test_proj/widgets/game_viewholder.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = GamePageController();

    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: pageController.isGameStartNotifier,
          builder: (context, state, child) {
            if (state) {
              return const Center(
                child: Column(
                  children: [
                    Spacer(),
                    GameInfo(),
                    GameViewholder(),
                    Spacer(),
                  ],
                ),
              );
            } else {
              return Center(
                child: FilledButton(
                    onPressed: () => pageController.startGame(),
                    child: const Padding(
                      padding: EdgeInsets.all(28.0),
                      child: Text("Начать"),
                    )),
              );
            }
          }),
    );
  }
}

class GameInfo extends StatelessWidget {
  const GameInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Text(
            "Сейчас ходит : ",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const Card(
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.close),
              )),
          const Spacer(),
        ],
      ),
    );
  }
}
