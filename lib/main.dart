import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoodu/textconstants.dart';

import 'main2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hoodoo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
         Container(
           height: 60,
           width:60,
           margin: EdgeInsets.all(20),
           child: Image(
             image: AssetImage("assets/Group13.png")
             ),
           ),
            Text("Login now to proceed",style: dmedium16.copyWith(fontSize: 20,color: blue_need,fontWeight: FontWeight.w700),),
            Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top:30,left:20,right:20),
        child:TextField(
          style: main_text.copyWith(color: darkGrey),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: blue_need, width: 1.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: lightGrey, width: 1.5),
          ),
          contentPadding: EdgeInsets.only(top: 20), // add padding to adjust text
          isDense: true,
          labelText:"Email",
          labelStyle: main_text,
          focusColor: blue_need,
          prefixIcon: Padding(
          padding: EdgeInsets.only(top: 0), // add padding to adjust icon
          child:Icon(Icons.email,size: 25,),
        ),
        ),
        ),
        ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top:30,bottom:30,left:20,right:20),
              child:TextField(
                  style: main_text.copyWith(color: darkGrey),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: blue_need, width: 1.50),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: lightGrey, width: 1.5),
                  ),
                  contentPadding: EdgeInsets.only(top: 20), // add padding to adjust text
                  isDense: true,
                  labelText:"Password",
                  labelStyle:main_text,
                  focusColor: blue_need,
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(top:0), // add padding to adjust icon
                    child: Icon(Icons.person,size: 25,),
                  ),
                ),
                obscureText: true,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin:EdgeInsets.only(left:20,right: 20,bottom: 25),
              color: Color(0xff4267B2),
              child: MaterialButton(elevation: 8,onPressed: (){ Navigator.of(context).push(CreateRoute(MyHomePage2()));},child: Text("Sign In",style:main_text.copyWith(color: Colors.white,fontWeight: FontWeight.w600)),),),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("New to hoodoo? ",style: main_text.copyWith(fontWeight: FontWeight.w500),),
                MaterialButton(
                  child:
                Container(
                  padding: EdgeInsets.only(
                    bottom: 3, // space between underline and text
                  ),
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(
                        color: Colors.blue,  // Text colour here
                        width: 3.0, // Underline width
                      ))
                  ),
                  child:
                  Text("Register here",style: main_text.copyWith(color:darkGrey,fontWeight: FontWeight.w500,)
                  )
                ),onPressed: (){
                  Navigator.of(context).push(CreateRoute(MyHomePage2()));
                },),
            ],)
,
          ],
        ),
      ),
    );
  }

  Route CreateRoute(var pg) {
    return PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 500),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
//          return ScaleTransition(child: child, scale: animation);
//        },
          var begin = Offset(0.0, 1.0);
          var end = Offset(0.0, 0.0);
          var curve = Curves.easeInOut;

          animation = CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          );
          var tween =
          Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          return SlideTransition(
            child: child,
            position: animation.drive(tween),
          );
        },
        pageBuilder: (context, animation, secondaryAnimation) {
          return pg;
        });
  }
}
