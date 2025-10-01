import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/tunes_model.dart';
import 'package:tunes_player_app/widgets/item_widget.dart';

class TunePage extends StatelessWidget {
  TunePage({
    super.key,
  });
  final List<TunesModel> tunes = [
    TunesModel(color: Color(0xffF44336), sound: 'note1.wav'),
    TunesModel(color: Color(0xffF89800), sound: 'note2.wav'),
    TunesModel(color: Color(0xffFEEB3B), sound: 'note3.wav'),
    TunesModel(color: Color(0xff4CAF50), sound: 'note4.wav'),
    TunesModel(color: Color(0xff2F9688), sound: 'note5.wav'),
    TunesModel(color: Color(0xff2896F3), sound: 'note6.wav'),
    TunesModel(color: Color(0xff9C27B0), sound: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Flutter Tune",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        backgroundColor: Color(
          0xFF092234,
        ),
      ),
      body: Column(
        children: tunes
            .map(
              (e) => TunesItem(item: e),
            )
            .toList(),
      ),
    );
  }
}
