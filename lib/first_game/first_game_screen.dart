import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'item_model.dart';

class FirstGameScreen extends StatefulWidget {
  const FirstGameScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<FirstGameScreen> {
  var player = AudioCache();
  late List<ItemModel> items;
  late List<ItemModel> items2;
  late int score;
  late bool gameOver;

  initGame() {
    gameOver = false;
    score = 0;
    items = [
      ItemModel(value: 'cat', name: 'Cat', img: 'assets/images/cat.png'),
      ItemModel(value: 'chicken', name: 'Chicken', img: 'assets/images/chicken.png'),
      ItemModel(value: 'cow', name: 'Cow', img: 'assets/images/cow.png'),
      ItemModel(value: 'crocodile', name: 'Crocodile', img: 'assets/images/crocodile.png'),
      ItemModel(value: 'dog', name: 'Dog', img: 'assets/images/dog.png'),
      ItemModel(value: 'elephant', name: 'Elephant', img: 'assets/images/elephant.png'),
      ItemModel(value: 'giraffe', name: 'Giraffe', img: 'assets/images/giraffe.png'),
      ItemModel(value: 'goat', name: 'Goat', img: 'assets/images/goat.png'),
      ItemModel(value: 'horse', name: 'Horse', img: 'assets/images/horse.png'),
      ItemModel(value: 'panda_bear', name: 'Panda', img: 'assets/images/panda-bear.png'),
      ItemModel(value: 'penguin', name: 'Penguin', img: 'assets/images/penguin.png'),
      ItemModel(value: 'snake', name: 'Snake', img: 'assets/images/snake.png'),
      ItemModel(value: 'whale', name: 'Whale', img: 'assets/images/whale.png'),
      ItemModel(value: 'zebra', name: 'Zebra', img: 'assets/images/zebra.png'),
    ];
    items2 = List<ItemModel>.from(items);

    items.shuffle();
    items2.shuffle();
  }

  @override
  void initState() {
    super.initState();
    initGame();
  }

  @override
  Widget build(BuildContext context) {
    if (items.length == 0) gameOver = true;
    return Scaffold(
      body: Container(
        height: 1000,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue[500]!,
                Colors.blue[900]!,
                Colors.cyan[900]!,
                // Colors.blue[900]!,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[100]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Score : ',
                              style: Theme.of(context).textTheme.headline3,
                            ),
                            TextSpan(
                              text: '$score',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (!gameOver)
                    Row(
                      children: [
                        Spacer(),
                        Column(
                          children: items.map((item) {
                            return Container(
                              margin: EdgeInsets.all(8),
                              child: Draggable<ItemModel>(
                                data: item,
                                childWhenDragging: Container(
                                  height: 100,
                                  child: Image.asset(item.img!),
                                ),
                                feedback: Container(
                                  height: 100,
                                  child: Image.asset(item.img!),
                                ),
                                child: Container(
                                  height: 70,
                                    child: Image.asset(item.img!),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                        const Spacer(flex: 2),
                        Column(
                          children: items2.map((item) {
                            return DragTarget<ItemModel>(
                              onAccept: (receivedItem) {
                                if (item.value == receivedItem.value) {
                                  setState(() {
                                    items.remove(receivedItem);
                                    items2.remove(item);
                                  });
                                  score += 10;
                                  item.accepting = false;

                                  player.play('true.wav');
                                } else {
                                  setState(() {
                                    score -= 5;
                                    item.accepting = false;
                                    player.play('false.wav');
                                  });
                                }
                              },
                              onWillAccept: (receivedItem) {
                                setState(() {
                                  item.accepting = true;
                                });
                                return true;
                              },
                              onLeave: (receivedItem) {
                                setState(() {
                                  item.accepting = false;
                                });
                              },
                              builder: (context, acceptedItems, rejectedItems) =>
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: item.accepting
                                            ? Colors.blue[900]
                                            : Colors.blue[200],
                                      ),
                                      alignment: Alignment.center,
                                      height:
                                      MediaQuery.of(context).size.width / 6.5,
                                      width: MediaQuery.of(context).size.width / 3,
                                      margin: const EdgeInsets.all(12),
                                      child: Text(
                                        item.name!,
                                        style:const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                        ),
                                      )),
                            );
                          }).toList(),
                        ),
                        Spacer(),
                      ],
                    ),
                  if (gameOver)
                    Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Game Over',
                              style: Theme.of(context).textTheme.headline6!.copyWith(
                                  fontWeight: FontWeight.bold, color: Colors.red),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              result(),
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (gameOver)
                    Container(
                      height: MediaQuery.of(context).size.width / 10,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(8)),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              initGame();
                            });
                          },
                          child: Text(
                            'New Game',
                            style: TextStyle(color: Colors.white),
                          )),
                    )
                ],
              ),
            ),
          ),
        ),
    );
  }

  //Functions:

  String result() {
    if (score == 140) {
      player.play('success.wav');
      return 'Awesome!';
    } else {
      player.play('tryAgain.wav');
      return 'Play again to get better score';
    }
  }
}