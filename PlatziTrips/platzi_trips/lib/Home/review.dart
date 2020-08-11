import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/people.jpg";
  String name = "Varuna Yasas";
  String details = "1 review 5 photos";
  String comment = "This is an amazing place";
  int stars;

  Review(this.pathImage, this.name, this.details, this.comment, this.stars);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build



    final star_empty = Container(
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    List<Widget> number_of_stars = new List<Widget>();



    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
        top: 20.0
        ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Lato", fontSize: 17.0),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 17.0, fontWeight: FontWeight.w900),
      ),
    );

    void SetStars(int stars) {
      number_of_stars.add(userInfo);
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


    final userStats = Row(
      children: number_of_stars,
    );



    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userStats, userComment],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[photo, userDetails],
    );
  }
}
