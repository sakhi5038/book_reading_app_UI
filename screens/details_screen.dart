import 'package:flutter/material.dart';
// import 'package:book_app/widgets/book_rating.dart';
// import 'package:book_app/consttants.dart';
// import 'package:book_app/widgets/rounded_button.dart';
import 'package:flutter_application_book_read/widgets/book_rating.dart';
import 'package:flutter_application_book_read/widgets/rounded_button.dart';

import '../constants.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(
                        top: size.height * .12,
                        left: size.width * .1,
                        right: size.width * .02),
                    height: size.height * .48,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/book_theme_6.jpg'),
                        fit: BoxFit.fitWidth,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: BookInfo(
                      size: size,
                    )),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .48 - 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ChapterCard(
                        name: "Money",
                        chapterNumber: 1,
                        tag: "Life is about change",
                        press: () {},
                      ),
                      ChapterCard(
                        name: "Power",
                        chapterNumber: 2,
                        tag: "Everything loves fantasy",
                        press: () {},
                      ),
                      ChapterCard(
                        name: "Influence",
                        chapterNumber: 3,
                        tag: "Influence someone like never before",
                        press: () {},
                      ),
                      ChapterCard(
                        name: "Win",
                        chapterNumber: 4,
                        tag: "Winning is what matters",
                        press: () {},
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline5,
                      children: const [
                        TextSpan(
                          text: 'You might also\n',
                        ),
                        TextSpan(
                            text: 'like...',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Stack(
                    children: [
                      Container(
                        height: 180,
                        width: double.infinity,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 24, top: 24, right: 150),
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: Color(0xFFFFF8F9),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  style: TextStyle(color: kBlackColor),
                                  children: [
                                    TextSpan(
                                      text:
                                          'How to win \nFriends & Influence \n',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Lim Johns',
                                      style: TextStyle(color: kLightBlackColor),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  BookRating(
                                    score: 4.3,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: RoundedButton(
                                      text: 'Read',
                                      verticalPadding: 10,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(
                          'assets/images/book-3.png',
                          width: 150,
                          fit: BoxFit.fitWidth,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final dynamic name;
  final dynamic tag;
  final dynamic chapterNumber;
  final dynamic press;
  const ChapterCard({
    Key? key,
    this.name,
    this.tag,
    this.chapterNumber,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: const EdgeInsets.only(bottom: 16),
      width: size.width - 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 33,
            color: const Color(0xFFD3D3D3).withOpacity(.84),
          ),
        ],
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Chapter $chapterNumber : $name \n',
                  style: const TextStyle(
                    fontSize: 16,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: tag,
                  style: const TextStyle(color: kLightBlackColor),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: press,
            icon: const Icon(
              Icons.arrow_forward_ios,
            ),
          )
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
        direction: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'How To Fix',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(fontSize: 28),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: this.size.height * .005),
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(top: 0),
                    child: Text(
                      'Your Credit',
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: this.size.width * .3,
                            padding:
                                EdgeInsets.only(top: this.size.height * .02),
                            child: const Text(
                              "When the earth was flat andeveryone wanted to win the gameof the best and people and winning with an A game with all the things you have.",
                              maxLines: 5,
                              style: TextStyle(
                                fontSize: 10,
                                color: kLightBlackColor,
                              ),
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: this.size.height * .015),
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Read',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_border,
                                size: 20,
                                color: Colors.grey,
                              )),
                          BookRating(score: 4.2),
                        ],
                      )
                    ],
                  )
                ],
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.transparent,
                child: Image.asset(
                  'assets/images/book-7.png',
                  height: double.infinity,
                  alignment: Alignment.topRight,
                  fit: BoxFit.fitWidth,
                ),
              ))
        ],
      ),
    );
  }
}
