import 'package:flutter/material.dart';
import 'package:flutter_netflix_ui_redesign/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Netflix UI Redesign',
      debugShowCheckedModeBanner: false,
      home: PageView(
        //controller: pageViewController,
        scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(

              color: Colors.pink,
              child: HomeScreen(),
            ),
            Container(
              color: Colors.cyan,
              child: photoGallery(),
            ),
            Container(
              color: Colors.deepPurple,
            ),

          ],

        onPageChanged: (num) {
          print("Número da página atual : " + num.toString());
        },
      ),


    );
    //Container(child: HomeScreen(),
    //   Container(child: photoGallery(),


  }
}


 photoGallery (){
  return PageView(
    scrollDirection: Axis.vertical,
    children: <Widget>[
      Container(
        color: Colors.amber,
        child: Center(
          child: Text("Second page With some more containers",),
        ),
      ),
    ],
  );
}