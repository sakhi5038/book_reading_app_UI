// import 'package:book_app/consttants.dart';
// import 'package:book_app/screens/home_screen.dart';
// import 'package:book_app/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_book_read/screens/home_screen.dart';
import 'package:flutter_application_book_read/widgets/rounded_button.dart';

import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
              displayColor: kBlackColor,
            ),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/book_theme_6.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headline2,
                children: [
                  TextSpan(
                      text: "Cas",
                      style: TextStyle(color: Colors.orange.shade400)),
                  TextSpan(
                    text: "book.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange.shade900),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .4,
              child: RoundedButton(
                text: "start reading",
                fontSize: 15,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen();
                      },
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
