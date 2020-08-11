import 'package:flutter/material.dart';


class ActionIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final bookmarkIcon =Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.white,
          shape: BoxShape.circle,
          ),
       child: Icon(Icons.bookmark_border),   
    );
    
    final castIcon = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
          color: Colors.white30,
          shape: BoxShape.circle,
          ),
       child: Icon(Icons.cast),   
    );

    final addIcon = Container(
      margin: EdgeInsets.only(top: 20.0 ),
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
        color: Colors.white,
          shape: BoxShape.circle,
          ),
       child: Icon(Icons.add, size: 40.0,),   
    );

    final mailIcon = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right:20.0),
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
          color: Colors.white30,
          shape: BoxShape.circle,
          ),
       child: Icon(Icons.mail),   
    );

    final userIcon = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
          color: Colors.white30,
          shape: BoxShape.circle,
          ),
       child: Icon(Icons.person),   
    );

    return 
     Row(
     children: <Widget>[ 
       Expanded(child: bookmarkIcon),
      Expanded(child: castIcon),
      Expanded(child: addIcon),
      Expanded(child: mailIcon),
      Expanded(child: userIcon) ]
    );
  }
}