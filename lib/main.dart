import 'package:flutter/material.dart';

//this is the main color. not sure what final is but color maincolor is like a css class
final Color mainColor = Color(0xFFFF5656);

void main() {
  //this is where your code lives

  //this is used to run the application
  //not sure what debugshowcheckedmodebanner is but this sets splashpage to home
  //splashpage will be defined later
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: SplashPage()));
}

//this is where we define the class splashpage and add content
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //this sets maincolor to the color we set above
      color: mainColor,
      //appends a child, stack. stack is multiple widgets stacked on each other
      child: Stack(
        children: [
          Align(
            //alignment.center will center the children widgets
            alignment: Alignment.center,
            //this child is an icon from google icons. Its a vector img
            child: Icon(Icons.terrain, color: Colors.white, size: 90),
          )
        ],
      ),
    );
  }
}