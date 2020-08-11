import 'package:flutter/material.dart';
import 'package:platzi_trips/User/image_place.dart';

class PlaceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 300.0
      ),
      height: 450.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        children: <Widget>[
            ImagePlace("assets/img/mountain.jpeg", "Duwili Ella", "Hiking Water fall hunting, Natural bath, Scenery & Photography", "Steps  123,123,123"),
            ImagePlace("assets/img/mountain_stars.jpeg", "Another PLace", "Insert cool description", "Steps  10,000,000"),
            ImagePlace("assets/img/sunset.jpeg", "Best Place", "The best description you could ever think about", "Steps  565"),
        ],
      ),
    );
  }
}