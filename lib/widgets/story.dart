import 'package:clay_containers/clay_containers.dart';
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
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClayContainer(
            height: 65,
            width: 65,
            borderRadius: 50,
            color: primary,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border:
                  Border.all(color: Colors.white, width: 2),
                  image: DecorationImage(
                      image: AssetImage(widget.photo),
                      fit: BoxFit.cover)),
            ),
          ),
        ),
        Text(
          widget.label,
          style: GoogleFonts.roboto(color: secondary),
        )
      ],
    );
  }
}
