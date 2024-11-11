import 'package:flutter/material.dart';

class GameCell extends StatelessWidget {
  const GameCell({super.key, this.isXSelected});

  final bool? isXSelected;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(2),
      color: isXSelected == null
          ? Theme.of(context).colorScheme.surfaceVariant
          : isXSelected!
              ? Colors.blue
              : Colors.red,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: isXSelected == null ? () {} : null,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: isXSelected == null
              ? const Center()
              : Center(
                  child: isXSelected!
                      ? const Icon(Icons.close)
                      : const Icon(Icons.circle_outlined),
                ),
        ),
      ),
    );
  }
}
