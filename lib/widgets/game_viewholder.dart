import 'package:flutter/material.dart';
import 'package:test_proj/widgets/one_field_viewholder.dart';

class GameViewholder extends StatelessWidget {
  const GameViewholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 500,
          height: 500,
          child: GridView.count(
            crossAxisCount: 3,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              OneFieldViewholder(
                isActive: true,
              ),
              OneFieldViewholder(
                isActive: true,
              ),
              OneFieldViewholder(
                isActive: true,
              ),
              OneFieldViewholder(
                isActive: true,
              ),
              OneFieldViewholder(
                isActive: true,
              ),
              OneFieldViewholder(
                isActive: true,
              ),
              OneFieldViewholder(
                isActive: true,
              ),
              OneFieldViewholder(
                isActive: true,
              ),
              OneFieldViewholder(
                isActive: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
