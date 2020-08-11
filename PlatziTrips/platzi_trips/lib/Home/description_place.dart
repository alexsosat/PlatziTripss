import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final star_empty = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    List<Widget> number_of_stars = new List<Widget>();

    void SetStars(int stars) {
      int i = 0;
      for (; i < stars; i++) {
        number_of_stars.add(star);
      }

      while (i != 5) {
        number_of_stars.add(star_empty);
        i++;
      }
    }

    SetStars(stars);

    final title_stars = Row(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
            child: Text(
              namePlace,
              style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.left,
            )),
        Row(
          children: number_of_stars,
        )
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        style:
            TextStyle(fontFamily: "Lato", fontSize: 16.0, color: Colors.grey),
        textAlign: TextAlign.left,
      ),
    );

    final place = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[title_stars, description, ButtonPurple("Navigate")],
    );

    return place;
  }
}
