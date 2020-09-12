import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoodu/textconstants.dart';

class MyHomePage2 extends StatefulWidget {
  @override
  _MyHomePageState2 createState() => _MyHomePageState2();
}
class _MyHomePageState2 extends State<MyHomePage2> {
  int Index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: Index,
          elevation: 8,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index)
          {
            setState(() {
              Index=index;
            });
          },
          items:[
            BottomNavigationBarItem(icon: Image(image:AssetImage("assets/md-home.png",)),title: Text("")),
            BottomNavigationBarItem(icon:Image(image:AssetImage("assets/msg.png")),title: Text("")),
            BottomNavigationBarItem(icon:Image(image:AssetImage("assets/account.png")),title: Text("")),
          ],

         ),

        endDrawer:
        Drawer(
        child: Container(
          width: MediaQuery
              .of(context)
              .size
              .width * 0.25,
          color: lightGrey,
          padding: EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textbutton(
                      text: "Rahul123",
                      bordercolor: Colors.transparent,
                      textstyle: dmedium16,
                    ),
                    SizedBox(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.03,
                    ),
                    textbutton(
                      text: "Drafts",
                      bordercolor: Colors.transparent,
                      textstyle: dmedium16,
                      onpress: () {
                      },
                    ),
                    SizedBox(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.03,
                    ),
                    textbutton(
                      text: "Archive",
                      bordercolor: Colors.transparent,
                      textstyle: dmedium16,
                    ),
                    SizedBox(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.03,
                    ),
                    textbutton(
                      text: "Edit Preference",
                      bordercolor: Colors.transparent,
                      textstyle: dmedium16,
                    ),
                    SizedBox(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.03,
                    ),
                    textbutton(
                        text: "Edit Profile",
                        bordercolor: Colors.transparent,
                        textstyle: dmedium16),
                    SizedBox(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.03,
                    ),
                    textbutton(
                        text: "About",
                        bordercolor: Colors.transparent,
                        textstyle: dmedium16),
                    SizedBox(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.03,
                    ),
                    textbutton(
                        text: "Help",
                        bordercolor: Colors.transparent,
                        textstyle: dmedium16),
                  ],
                ),
                textbutton(
                    text: "Sign Out",
                    bordercolor: Colors.transparent,
                    textstyle: dmedium16),
              ]),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery
            .of(context)
            .size
            .height * 0.09), // here the desired height
        child:
        Container( width: MediaQuery.of(context).size.width,
            color: blue_need,
            child:
            Card(
            color: blue_need,
            elevation:0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: 30, top: 20, bottom: 20, right: 15),
                  child:Image.asset("assets/Group22.png",scale: 0.9,)),
                Expanded(
                  child: Text("hoodoo", style: main_text.copyWith(
                      color: Colors.white, fontSize:20 ,fontWeight: FontWeight.w700),),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  child: Icon(Icons.notifications, color: Colors.white,size: 25,),
                ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Container(height:40,width:55,child:MaterialButton(child:Image.asset("assets/bars.png",fit: BoxFit.fill,),onPressed:(){ Scaffold.of(context).openEndDrawer();},),)
                ),
              ],
            )
        ),
      ),
      ),
      body:Column(
      children:[
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.25,
            child: Image(image: AssetImage("assets/food.jpg"),fit: BoxFit.fill,),
          ),
          CircularImage(85,AssetImage("assets/Group13.png"),20)
        ],
      ),
      Expanded(
          child:Column(
          children:[
            Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
               Container(
               margin:EdgeInsets.only(top:20,bottom: 20,left:30,right:30),
               child:CircularImage(50,AssetImage("assets/person.png"),8,),
             )
           , Container(
               margin:EdgeInsets.only(top:20,bottom: 20),
               child:Text("Utkarsh Tiwari",style:
             namefont,)
             )
           ],
         ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children:[
                cardwidget(text:"Cook Info",img:("assets/Group16.png")),
                cardwidget(text:"Track Leaves",img:("assets/calendarcheck.png"))
        ]
            ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             cardwidget(text:"Payments",img:("assets/attachmoney_round.png")),
             cardwidget(text:"Feedback",img:("assets/feedback_outline.png"))
           ],
         )
      ]
          )
      )
   ] )
    );
  }
}
  class textbutton extends StatelessWidget{
  final String text;
  final Color color;
  final Function onpress;
  final TextStyle textstyle;
  final Color bordercolor;
  final double borderwidth;

  textbutton({this.onpress=null,this.text, this.color=null,
  @required this.textstyle ,this.bordercolor=Colors.transparent,this.borderwidth=1.6});

  @override
  Widget build(BuildContext context) {
  // TODO: implement build
  return Container(

  height: 34,
  padding: EdgeInsets.all(2.0),
  decoration: BoxDecoration(
  border: Border.all(color: bordercolor,width: borderwidth)
  ,borderRadius: BorderRadius.all(Radius.circular(10.0),),
  ),
  child:MaterialButton(  child:  Text(text, style: (color==null)?textstyle:textstyle.copyWith(color: color)) , onPressed:onpress),
  );
  }
  }

  class CircularImage extends StatelessWidget
  {
    final double diameter;
    final AssetImage img;
    final double paddinglen;

    CircularImage(this.diameter, this.img, this.paddinglen);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter,
      height: diameter,
      padding: EdgeInsets.all(paddinglen),
      decoration: new BoxDecoration(
        // Circle shape
          shape: BoxShape.circle,
          color: Colors.white,
          // The border you want
          // The shadow you want
          boxShadow: [
            new BoxShadow(
              color: Colors.black.withOpacity(0.7),
              blurRadius: 5.0,
            ),
          ]
      ),
      child: Image(image: img,height: 25,width: 25,),
    );
  }

  }


  class cardwidget extends StatelessWidget
  {
    final String text;
    final String img;


    cardwidget({this.text, this.img});

  @override
  Widget build(BuildContext context) {
//
    return  Container(
      height: 120,
      width: 150,
      margin: EdgeInsets.all(15),
      child: Card(
        elevation: 12,
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(img,scale: 0.9,)
            ,Container(
                margin: EdgeInsets.only(top: 15,left: 15,right:15),
                child:Text(text,style: dmedium16.copyWith(fontSize: 14),)
            )
          ],
        ),
      ),
    );
  }
}

