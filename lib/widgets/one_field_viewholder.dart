import 'package:flutter/material.dart';
import 'package:test_proj/widgets/game_cell.dart';

class OneFieldViewholder extends StatelessWidget {
  const OneFieldViewholder({super.key, this.isActive = false, this.isXWin});

  final bool isActive;
  final bool? isXWin;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(2),
      elevation: 3,
      color: isXWin == null
          ? Theme.of(context).colorScheme.surface
          : isXWin!
              ? Colors.red.shade800
              : Colors.blue.shade800,
      shape: isActive
          ? RoundedRectangleBorder(
              side: BorderSide(
                  color: Theme.of(context).colorScheme.primary, width: 3),
              borderRadius: const BorderRadius.all(Radius.circular(12)))
          : const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Padding(
        padding: EdgeInsets.all(isActive ? 5 : 2),
        child: GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 3,
          children: const [
            GameCell(),
            GameCell(),
            GameCell(
              isXSelected: false,
            ),
            GameCell(),
            GameCell(
              isXSelected: false,
            ),
            GameCell(
              isXSelected: true,
            ),
            GameCell(
              isXSelected: true,
            ),
            GameCell(),
            GameCell(),
          ],
        ),
      ),
    );
  }
}
