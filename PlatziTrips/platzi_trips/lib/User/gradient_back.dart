import 'package:flutter/material.dart';

class UserGradientBack extends StatelessWidget {
  
  String title = "Popular";

  UserGradientBack(this.title);
  
  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    final userTitle = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        ),
      )
      );

    final setIcon = Container(
     margin: EdgeInsets.only(
       right: 20.0
     ),
     child: Icon(
      Icons.settings,
      color: Colors.white30,
    )
    );
    
    
    return Container(
      height: 450.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp
          )
      ),

      child: Row(
        children: <Widget>[
          Expanded(child: userTitle),
          setIcon
        ],
      ),

      alignment: Alignment(-0.9, -0.5),

    );
  }
}