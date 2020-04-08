import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_neumorphism/constants.dart';

class Navigation extends StatefulWidget {
  final IconData icon ;
  final bool selected;
  final String label;
  final Function onTap;

  Navigation({
    @required this.icon,
    @required this.label,
    @required this.selected,
    @required this.onTap
  });

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.only(top:15.0,left: 15),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: ClayContainer(
                emboss: widget.selected,
                color: primary,
                height: width*0.2,
                width: width*0.2,
                borderRadius: 10,
                child: Icon(
                  widget.icon,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.label),
              ),
            )
            //Icon(Icons.email,color: Colors.white,size: 40,)
          ],
        ),
      ),
    );
  }
}
