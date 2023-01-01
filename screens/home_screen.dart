import 'package:flutter/material.dart';

// import 'package:book_app/consttants.dart';
// import 'package:book_app/screens/details_screen.dart';
// import 'package:book_app/widgets/book_rating.dart';
// import 'package:book_app/widgets/reading_card_list.dart';
// import 'package:book_app/widgets/two_side_rounded_button.dart';
import 'package:flutter_application_book_read/screens/details_screen.dart';
import 'package:flutter_application_book_read/screens/details_screen2.dart';
import 'package:flutter_application_book_read/screens/details_screen3.dart';
import 'package:flutter_application_book_read/widgets/book_rating.dart';
import 'package:flutter_application_book_read/widgets/reading_card_list.dart';
import 'package:flutter_application_book_read/widgets/two_side_rounded_button.dart';

import '../constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/book_theme_9.jpg"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height * .1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                        text: TextSpan(
                      style: Theme.of(context).textTheme.headline3,
                      children: [
                        TextSpan(
                            text: "What are you reading\n",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.amber.shade600)),
                        TextSpan(
                            text: "today?",
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    )),
                  ),
                  const SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadingListCard(
                          image: 'assets/images/book-7.png',
                          title: 'How To Fix Your Credit',
                          auth: 'Bryce Conway',
                          rating: 4.3,
                          pressDetails: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return DetailScreen();
                              },
                            ));
                          },
                        ),
                        ReadingListCard(
                          image: 'assets/images/book-6.png',
                          title: 'Out Of The Dark',
                          auth: 'Raeman Gavy',
                          rating: 4.9,
                          pressDetails: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return DetailSecond();
                              },
                            ));
                          },
                        ),
                        const SizedBox(width: 30),
                        ReadingListCard(
                          image: 'assets/images/book-9.png',
                          title: 'Paying The Price',
                          auth: 'Sara Goldrick',
                          rating: 4.9,
                          pressDetails: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return DetailThird();
                              },
                            ));
                          },
                        ),
                        const SizedBox(width: 30),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headline4,
                            children: const [
                              TextSpan(text: 'Best Of All\n'),
                              TextSpan(
                                text: 'Day',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        bestofTheDayCard(size, context),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headline4,
                            children: const [
                              TextSpan(text: 'Continue\n'),
                              TextSpan(
                                text: 'reading...',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          height: 100,
                          width: double.infinity,
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
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Forty Rules Of Love',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Rumi',
                                            style: TextStyle(
                                              color: kLightBlackColor,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Text(
                                              'Chapter 7 of 10',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: kLightBlackColor,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                        ],
                                      )),
                                      Image.asset(
                                        'assets/images/book-1.png',
                                        width: 55,
                                      )
                                    ],
                                  ),
                                )),
                                Container(
                                  height: 7,
                                  width: size.width * .65,
                                  decoration: BoxDecoration(
                                    color: kProgressIndicator,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container bestofTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 245,
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(
                  left: 24,
                  top: 24,
                  right: size.width * .35,
                ),
                height: 230,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFEAEAEA).withOpacity(.45),
                  borderRadius: BorderRadius.circular(29),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: const Text(
                        'New York Time Best For 11th March 2020',
                        style: TextStyle(
                          fontSize: 9,
                          color: kLightBlackColor,
                        ),
                      ),
                    ),
                    Text(
                      'How To Win \nFriends & Influence',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const Text(
                      'Gary Doon',
                      style: TextStyle(color: kLightBlackColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: BookRating(score: 4.1),
                          ),
                          const Expanded(
                              child: Text(
                            'When There is Nothing but there is everything which is Hidden',
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 10,
                              color: kLightBlackColor,
                            ),
                          ))
                        ],
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
              right: 0,
              top: 0,
              child: Image.asset(
                'assets/images/book-3.png',
                width: size.width * .37,
              )),
          Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                height: 40,
                width: size.width * .3,
                child: TwoSideRoundedButton(
                    radious: 24, text: 'Read', press: () {}),
              ))
        ],
      ),
    );
  }
}
