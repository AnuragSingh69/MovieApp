import 'package:flutter/material.dart';
import 'package:movies/ThirdScreen.dart';

class Filmitem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int year;
  
  final String Director;
  final double rating;

  Filmitem({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.Director,
    @required this.year,
    @required this.rating,
    
  });

  void SelectMovie(BuildContext context){
    Navigator.of(context).pushNamed("/abc",arguments:id );
  }

 @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap:()=>SelectMovie(context) ,
        
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 4,
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      imageUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 10,
                    child: Container(
                      width: 300,
                      color: Colors.black54,
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20,
                      ),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(children: <Widget>[
                      
                      
                      Text("Director:${Director}"),
                    ],),
                    SizedBox(width: 6,),
                    Row(children: <Widget>[
                    
                    Text("year:${year}"),
                    
                    ],),

                    SizedBox(width: 6,),
                      Row(children: <Widget>[
                      Icon(Icons.star),
                      
                      SizedBox(width: 6,),
                      Text("rating:${rating}"),
                    ],),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
