import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    //TODO: implement createState
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  
  IconData heart = Icons.favorite_border;
  bool clicked = false;

  void onPressedFav() {
    setState(() {
      
    
    if(!clicked){
       Scaffold.of(context).showSnackBar(SnackBar(
          content: Text("Favorito"),
          )
          );
      heart = Icons.favorite;
      clicked = true;
    }
    else{
      Scaffold.of(context).showSnackBar(SnackBar(
          content: Text("Removing"),
          )
          );
      heart = Icons.favorite_border;
      clicked = false;
    }
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        heart
      ),
    );
  }
}