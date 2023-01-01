// import 'package:book_app/consttants.dart';
import 'package:flutter/material.dart';
// import 'package:book_app/widgets/book_rating.dart';
// import 'package:book_app/widgets/two_side_rounded_button.dart'

import 'package:flutter_application_book_read/constants.dart';
import 'package:flutter_application_book_read/widgets/book_rating.dart';
import 'package:flutter_application_book_read/widgets/two_side_rounded_button.dart';

class ReadingListCard extends StatelessWidget {
  final dynamic image;
  final dynamic title;
  final dynamic auth;
  final dynamic rating;
  final dynamic pressDetails;
  final dynamic pressRead;

  const ReadingListCard({
    Key? key,
    this.image,
    this.title,
    this.auth,
    this.rating,
    this.pressDetails,
    this.pressRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, bottom: 40),
      height: 245,
      width: 202,
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 221,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(29),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 33,
                        color: kShadowColor,
                      )
                    ]),
              )),
          Image.asset(
            image,
            width: 150,
            // fit: BoxFit.cover,
          ),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                ),
                BookRating(score: rating),
              ],
            ),
          ),
          Positioned(
              top: 160,
              child: Container(
                height: 85,
                width: 202,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: RichText(
                        maxLines: 2,
                        text: TextSpan(
                          style: const TextStyle(color: kBlackColor),
                          children: [
                            TextSpan(
                              text: '$title\n',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: auth,
                              style: const TextStyle(
                                color: kLightBlackColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: pressDetails,
                          child: Container(
                            width: 101,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            alignment: Alignment.center,
                            child: const Text('Details'),
                          ),
                        ),
                        Expanded(
                            child: TwoSideRoundedButton(
                          text: "Read",
                          press: pressRead,
                        ))
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
