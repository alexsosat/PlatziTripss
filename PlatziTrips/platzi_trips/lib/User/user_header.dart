import 'package:flutter/material.dart';
import 'package:platzi_trips/User/action_icons.dart';
import 'package:platzi_trips/User/gradient_back.dart';
import 'package:platzi_trips/User/user_profile.dart';


class userHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
       UserGradientBack("Profile"),
       UserProfile("assets/img/people.jpg", "Juan", "test@gmail.com"),
        ],
    );
  }
}