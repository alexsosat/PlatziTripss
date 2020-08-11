import 'package:flutter/material.dart';
import 'package:platzi_trips/User/image_list.dart';
import 'package:platzi_trips/User/image_place.dart';
import 'package:platzi_trips/User/user_header.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
            
            children: <Widget>[
              userHeader(),
              ListView(
                children: <Widget>[
                  PlaceList()

                ],
              )
              
            ],
          );
  }
}