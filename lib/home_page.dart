import 'package:flutter/material.dart';
import 'package:instcln/store/post.dart';
import 'package:instcln/store/stry.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 10, left: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        margin: const EdgeInsets.only(left: 8, top: 5),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/instagram.png"),
                            fit: BoxFit.cover,
                            opacity: 1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite_border,
                                  size: 33,
                                )),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.04,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const SizedBox(
                                height: 30,
                                width: 30,
                                child: Icon(Icons.message),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  StoryList(),
                ],
              ),
            ),
            Divider(
              height: 5,
              color: Colors.grey.withOpacity(0.4),
            ),
            Expanded(
              child: PostWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
