import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messenger_neumorphism/constants.dart';

class Message extends StatefulWidget {
  final String photo;
  final String name;
  final String message;

  Message({@required this.photo,@required this.name, @required this.message});

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.photo),
                    maxRadius: 30,
                  ),
                  Positioned(
                    bottom: 1,
                    right: 1,
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              colors: [Color(0XFF2AC09C),Color(0XFFB8F833)]
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
                child: SizedBox(width: 20,)),
            Expanded(
              flex: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(widget.name,style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: secondary)
                  ),
                  SizedBox(height: 10,),
                  Text(widget.message,style: GoogleFonts.roboto(
                      color: secondary)
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
