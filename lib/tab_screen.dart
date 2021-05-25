

import 'package:flutter/material.dart';
import 'package:movies/HomeScreen.dart';
import 'package:movies/favourites.dart';


class TabScreen extends StatefulWidget {

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(//automatically switches wen we switch b/w tabs
      length: 2,
      // initialIndex: 0,
      child: Scaffold(
        
        appBar:
      
        
         AppBar(
          title: Text('GENRES'),
          
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: "categories",

              ),
              Tab(
                icon: Icon(Icons.star),
                text: "favourites",
              ),
            ],)
          
          
          
        ),
        body: TabBarView(children: [//internally connected with defaulttabcontroller
          HomeScreen(),
          FavScreen()
          
        ],
        ),
      ),
    );

      
    
  }
}