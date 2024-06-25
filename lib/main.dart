import 'package:flutter/material.dart';
import 'package:wishing_cards/view/Wishing.dart';
void main(List<String> args) {
  runApp(WishingScreen());
}
class WishingScreen extends StatelessWidget {
  const WishingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "hr"),
      debugShowCheckedModeBanner: false,
      // home: WishingCardScreen(),
      home: WIshingScreens(),
    );
  }
}