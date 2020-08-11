import 'package:flutter/material.dart';
import 'package:platzi_trips/Home/floating_action_button_green.dart';

class ImagePlace extends StatelessWidget {
  String pathImage = "assets/img/mountain.jpeg";
  String title = "Duwili";
  String description = "Hiking Water fall hunting, Natural bath, Scenery & Photography";
  String steps = "Steps   123,123,123";

  ImagePlace(this.pathImage, this.title, this.description,this.steps);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 250.0,
      width: 450.0,
      margin: EdgeInsets.only(
        right: 20.0,
        left: 20.0,
        bottom: 150.0
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
          ),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.0, 7.0)
            )
          ]
      ),
    );
    
    final cardBackground = Container(
      width: 270.0,
      height: 150.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.0, 7.0)
            )
          ]
      ),
    );

    final cardTitle = Container(
      width: 240,
      margin: EdgeInsets.only(
        left: 20.0,
        top: 20.0
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
    );

    final cardDescription = Container(
      width: 240,
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0
      ),
      child: Text(
        description,
        style: TextStyle(fontSize: 14.0, color: Colors.grey),
        ),
    );

     final cardSteps = Container(
      width: 240,
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0
      ),
      child: Text(
        steps,
        style: TextStyle(fontSize: 20.0, color: Colors.orange, fontWeight: FontWeight.bold),
        ),
    );

    final cardText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        cardTitle,
        cardDescription,
        cardSteps
      ],
    );

    final cardPlace = Stack(
      children: <Widget>[
        cardBackground,
        cardText
      ],
    );

    final fullCard = Stack(
      alignment: Alignment(0, 0.3),
      children: <Widget>[
        card,
        cardPlace,
      ],
      );

    return Stack(
      alignment: Alignment(0.7, 0.6),
      children: <Widget>[
        fullCard,
       FloatingActionButtonGreen()
      ],
      );
  }
  }
