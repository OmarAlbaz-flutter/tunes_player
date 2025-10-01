import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/tunes_model.dart';

class TunesItem extends StatelessWidget {
  const TunesItem({super.key, required this.item});

  final TunesModel item;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          item.playSound();
        },
        child: Container(
          color: item.color,
        ),
      ),
    );
  }
}
