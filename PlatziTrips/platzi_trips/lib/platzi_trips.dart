import 'package:flutter/material.dart';
import 'package:platzi_trips/Home/home_trips.dart';
import 'package:platzi_trips/User/profile_trips.dart';


import 'package:platzi_trips/search_trips.dart';


class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //TODO: implement createState
    return _PlatziTripsState();
  }
}

class _PlatziTripsState extends State<PlatziTrips> {
 
  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    Hometrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void OnTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
          
          body: widgetsChildren[indexTap],

          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
              primaryColor: Colors.purple
            ),
            child: BottomNavigationBar(
              onTap: OnTapTapped,
              currentIndex: indexTap,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
                BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("Search")),
                BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("User")),
              ]
              )
            ),
          //body: new Review("assets/img/people.jpg", "Juan", "1 review 5 photos", "beautiful place", 1),
        );
  }
}