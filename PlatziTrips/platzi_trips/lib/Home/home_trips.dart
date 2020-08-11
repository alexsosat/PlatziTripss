import 'package:flutter/material.dart';
import 'package:platzi_trips/Home/review_list.dart';


import 'description_place.dart';
import 'header_appbar.dart';


class Hometrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  DescriptionPlace("Duwili Ella", 4, "Lorem ipsum dous. Curna porta imperdiet.\n Aliquullam dapibus massa id efficitur varius. Prorper risus, a malesuada arcu enim sit amet felis. Etiam sit amet vestibulum neque, in dapibus turpis.  , lacus a imperdiet \nporttitor, enim elit congue odio, at dignissim sapien velit sed erat. In sodales nisl nunc, non scelerisque tellus condimentum vitae.\n Fusce scelerisque sagittis posuere. Nulla sit amet ante eget nequ et vitae dolor. "),
                  ReviewList()
                ],
              ),
              HeaderAppBar()
            ],
          );
  }
}