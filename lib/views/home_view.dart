import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hangman/views/game_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hangman")),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder())),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder())),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder())),
        ),
        CupertinoButton.filled(child: Text("start game"), onPressed: () {
          Get.to(GameView(), transition: Transition.cupertino);
        },)
        
      ]),
    );
  }
}
