import 'package:flutter/material.dart';
import 'package:test_proj/widgets/game_viewholder.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            GameInfo(),
            Spacer(),
            GameViewholder(),
            Spacer(),
          ],
        ),
      ),
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
