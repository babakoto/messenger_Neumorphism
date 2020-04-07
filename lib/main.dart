import 'dart:ui';

import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messenger_neumorphism/constants.dart';
import 'package:messenger_neumorphism/widgets/Message.dart';
import 'package:messenger_neumorphism/widgets/Navigation.dart';
import 'package:messenger_neumorphism/widgets/story.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Messeger neumorphism',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool chatSelected = true;
  bool peopleSelected = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Container(
                height: height*0.15,
                color: background,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      flex:1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(image: AssetImage(PROFIL))
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      flex: 2,
                      child: Text("Chats",
                          style: GoogleFonts.roboto(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                    ),
                    Expanded(
                      flex: 1,
                      child: ClayContainer(
                        height: height*0.08,
                        width: width*0.08,
                        color: primary,
                        borderRadius: 30,
                        child: Icon(Icons.photo_camera,color: secondary,),
                      ),
                    ),
                    SizedBox(width: 15,)
                    ,
                    Expanded(
                      flex: 1,
                      child: ClayContainer(
                        color: primary,
                        height: height*0.08,
                        width: width*0.08,
                        borderRadius: 50,
                        child: Icon(Icons.mode_edit,color: secondary,),
                      ),
                    ),
                    SizedBox(width: 15,)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: ClayContainer(
                emboss: true,
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: primary,
                      focusColor: primary,
                      hoverColor: primary,
                      prefixIcon: Icon(
                        Icons.search,
                        color: secondary,
                      ),
                      hintText: "Search",
                      hintStyle: GoogleFonts.roboto(
                        fontSize: 20
                      ),
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20)),
                ),
                color: primary,
                height: 50,
                borderRadius: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Container(
                height: height*0.18,
                color: background,
                child: ListView(
                  padding: EdgeInsets.only(top:10,right: 10,left: 10),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClayContainer(
                            height: 65,
                            width: 65,
                            borderRadius: 50,
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                color: primary,
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Your story",
                          style: GoogleFonts.roboto(color: secondary),
                        )
                      ],
                    ),
                    Story(
                      photo: STORY1,
                      label: "Kevin",
                    ),
                    Story(
                      photo: STORY5,
                      label: "Cedric",
                    ),
                    Story(
                      photo: STORY3,
                      label: "Jerry",
                    ),
                    Story(
                      photo: STORY2,
                      label: "Naina",
                    ),
                    Story(
                      photo: STORY4,
                      label: "Tojo",
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                height: height*0.41,
                color: background,
                child: ListView(
                  children: <Widget>[
                    Message(
                      photo: TSIORY,
                      name: "Tsiory Rabearison",
                      message: "Lorem ipsum dolor sit amet, consec",
                    ),
                    Message(
                      photo: LANDRY,
                      name: "Landry Kice",
                      message: "Lorem ipsum dolor sit amet",
                    ),
                    Message(
                      photo: CEDRIC,
                      name: "Cedric Tahina",
                      message: "Lorem ipsum dolor sit amet, consec",
                    ),
                    Message(
                      photo: DIDA,
                      name: "Dida Harivelo",
                      message: "Lorem ipsum dolor sit amet.",
                    ),
                  ],
                ),
              ),
            ),
            ClayContainer(
              height: height*0.15,
              color: primary,
              surfaceColor: primary,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Navigation(
                        icon: Icons.message,
                        label: "Chats",
                        selected: chatSelected,
                      onTap: (){
                        setState(() {
                          peopleSelected = false;
                          chatSelected = true;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 80),
                  Expanded(
                    child: Navigation(
                      icon: Icons.people,
                      label: "People",
                      selected: peopleSelected,
                      onTap: (){
                        setState(() {
                          peopleSelected = true;
                          chatSelected = false;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
