import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messenger_neumorphism/constants.dart';

class Story extends StatefulWidget {
  final String photo;
  final String label;

  Story({@required this.photo, @required this.label});

  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height =MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              width: width*0.2,
              height: width*0.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white, width: 2),
                  image: DecorationImage(
                      image: AssetImage(widget.photo),
                      fit: BoxFit.cover)),
            ),
          ),
        ),
        Expanded(
          child: Text(
            widget.label,
            style: GoogleFonts.roboto(color: secondary),
          ),
        )
      ],
    );
  }
}
