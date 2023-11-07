import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hangman/controllers/game_view_controller.dart';
import 'package:hangman/views/widgets/letter_button.dart';
import 'package:hangman/views/widgets/letter_holder.dart';
    class GameView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  GameViewController controller = Get.put(GameViewController(context));
    controller.init();
    return GetBuilder<GameViewController>(
      init: controller,
      builder: (_) {
        return (!controller.theInitIsDone)?Center(child: CircularProgressIndicator()):Scaffold(
          appBar: AppBar(
            title: Text("Hangman"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/${controller.hibakSzama()}.png"),
              Text(controller.csillagosSzoveg,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Column(
                children: [
                  LetterHolder(controller: controller,letters: ["A","Á","B","C","D","E"]),
                  LetterHolder(controller: controller,letters: ["É","F","G","H","I","Í"]),
                  LetterHolder(controller: controller,letters: ["J","L","K","M","N","O"]),
                  LetterHolder(controller: controller,letters: ["Ó","Ö","Ő","P","Q","R"]),
                  LetterHolder(controller: controller,letters: ["S","Z","U","Ú","Ü","Ű"]),
                  LetterHolder(controller: controller,letters: ["V","W","X","Y","Z"," "]),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}

