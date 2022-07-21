import 'package:flutter/material.dart';

//this is the main color. not sure what final is but color maincolor is like a css class
final Color mainColor = Color(0xFFFF5656);

void main() {
  //this is where your code lives

  //this is used to run the application
  //not sure what debugshowcheckedmodebanner is but this sets splashpage to home
  //splashpage will be defined later
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false, home: MainApp() //SplashPage()
      ));
}

//this is where we define the class splashpage and add content
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //this is the future object that will contain our delay
    //future.delayed takes two params
    //duration is the first which has a property of 2
    //secibd us a callback function
    Future.delayed(const Duration(seconds: 2), () {
      //callback function uses Navigator.of that pushed to navigation stack
      //builder context retrieves closest nav in app
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => MainApp()));
    });

    //whats being returned/displayed
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
          ),
          Align(
              //sets alignment to slightly below center
              alignment: Alignment.bottomCenter,
              //TODO: figure out how to raise the indicator up more
              child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white)))
        ],
      ),
    );
  }
}

//this is landing page

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //scaffold is an element that creates a container
    //the semantics hint at the way all widgets inside are organized
    return Scaffold(

        //added in an appbar and drawer element to the existing scaffold
        //appbar widget
        appBar: AppBar(
          //removes shadow
          elevation: 0,
          //removes default background
          backgroundColor: Colors.transparent,
          title: Center,
            child: Icon(
              Icons.terrain,
              color: mainColor,
              size: 40
            )
          //Sets icon theme to our previous color class
          iconTheme: IconThemeData(color: mainColor),
        ),
        //drawer widget
        drawer: Drawer(),
        body: Center(child: Text('Welcome to my application')));
  }
}
