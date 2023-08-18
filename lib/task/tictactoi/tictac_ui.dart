import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/task/tictactoi/tictac_controller.dart';

class TicTacToi extends StatelessWidget {
  const TicTacToi({super.key});

  @override
  Widget build(BuildContext context) {
    TicTacController ticTacController = Get.find();
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 70, left: 10, right: 10, bottom: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const Text('Player1'),
                    const SizedBox(
                      height: 8,
                    ),
                    Obx(() => Text(ticTacController.player1.value.toString()))
                  ],
                ),
                Column(
                  children: [
                    const Text('Player2'),
                    const SizedBox(
                      height: 8,
                    ),
                    Obx(() => Text(ticTacController.player2.value.toString()))
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Obx(
                () => GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        ticTacController.selectedIndex = index.obs;
                        ticTacController.play();
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          ticTacController.gamePlay[index],
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: ticTacController.gamePlay.length,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ticTacController.clear();
                  },
                  child: const Text('Reset'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ticTacController.reserAll();
                  },
                  child: const Text('Restart'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
