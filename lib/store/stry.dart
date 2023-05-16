// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:instcln/story_page.dart';

class StoryList extends StatelessWidget {
  StoryList({Key? key}) : super(key: key);

  List<dynamic> story = [
    {"images": 'assets/images/dragonite.png', "username": "Dragonite"},
    {"images": 'assets/images/growlithe.png', "username": "Growlithe"},
    {"images": 'assets/images/haxorus.png', "username": "Haxorus"},
    {"images": 'assets/images/ceruledge.png', "username": "Ceruledge"},
    {"images": 'assets/images/salamence.png', "username": "Salamence"},
    {"images": 'assets/images/zekrom.png', "username": "Zekrom"},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(children: [
              Column(
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/pikachu.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Text(
                    "Add story",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              Positioned(
                bottom: 12,
                right: 0,
                child: Container(
                  height: 23,
                  width: 23,
                  decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Container(
                      alignment: Alignment.center,
                      height: 18,
                      width: 18,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              )
            ]),
            const SizedBox(width: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                story.length,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.all(3),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => StoryPage(
                            map: story[index],
                          ),
                        ));
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 72,
                            height: 72,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF982282),
                                  Color(0xFFEEA863),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Container(
                                width: 66,
                                height: 66,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Container(
                                    width: 65,
                                    height: 65,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('${story[index]["images"]}'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '${story[index]["username"]}',
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
