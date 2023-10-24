import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hangman/controllers/game_view_controller.dart';

class GameView extends StatelessWidget {
  GameViewController controller = Get.put(GameViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GameViewController>(
      init: controller,
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Hangman"),
          ),
          body: Column(
            children: [
              Image.asset("images/${controller.hibakSzama()}.png"),
              Text(controller.randomSzoveg),
              Text(controller.csillagosSzoveg),
              Column(
                
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      LetterButon(letter: "A", controller: controller),
                      LetterButon(letter: "Á",controller: controller),
                      LetterButon(letter: "B",controller: controller),
                      LetterButon(letter: "C",controller: controller),
                      LetterButon(letter: "D",controller: controller),
                      LetterButon(letter: "E",controller: controller),
                  ],
                )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}

class LetterButon extends StatelessWidget {
  const LetterButon({
    required this.letter,
    required this.controller,
  });

  final GameViewController controller;
  final String letter;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(padding: EdgeInsets.zero, 
    child: Text(letter), 
    onPressed: (controller.aMegadottBetuVoltEmar(letter))
    ? null 
    : () => controller.tippHozzaadasa(letter), 
                    );
  }
}
