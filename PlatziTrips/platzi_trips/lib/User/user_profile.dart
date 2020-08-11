import 'package:flutter/material.dart';
import 'package:platzi_trips/User/action_icons.dart';

class UserProfile extends StatelessWidget {
 String pathImage = "assets/img/people.jpg";
  String name = "Varuna Yasas";
  String mail = "test@gmail.com";
  String comment = "This is an amazing place";
  int stars;

  UserProfile(this.pathImage, this.name, this.mail);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build



    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
        top: 20.0
        ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Lato", fontSize: 17.0, color: Colors.white),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Text(
        mail,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
      ),
    );


    final userDetails = Container(
    margin: EdgeInsets.only(
      top: 20.0
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo],
    )
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        border: Border.all(width: 3.0, color: Colors.white),
          shape: BoxShape.circle,
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    return Container(
    margin: EdgeInsets.only(
      top: 150.0
    ),
    child: Column(

      children: <Widget>[
          Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[photo, userDetails],
    ),
          ActionIcons()
      ],
    )
    

    
    
    );
  }
}