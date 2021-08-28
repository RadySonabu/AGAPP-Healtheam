import 'package:flutter/material.dart';
import 'package:gamify/src/games_specific/specific_detail.dart';
import 'package:gamify/src/games_specific/specific_game.dart';
import 'package:get/get.dart';

class MyCardWidget extends StatelessWidget {  
  MyCardWidget({Key? key, required this.title, required this.subtitle, required this.color}) : super(key: key);  
   String title;
      String  subtitle;
   Color color;
  @override  
  Widget build(BuildContext context) {  
    return Container(  
      width: 200,  
      height: 170,  
      padding: new EdgeInsets.all(5.0),  
      child: Card(  
        shape: RoundedRectangleBorder(  
          borderRadius: BorderRadius.circular(15.0),  
        ),  
        color: color,  
        elevation: 10,  
        child: Column(  
          mainAxisSize: MainAxisSize.min,  
          children: [  
             ListTile(  
              // leading: Icon(Icons.album, size: 20),  
              title: Text('$title', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),), 
              subtitle: Text(  
                'Best of Sonu Nigam Music.',  
                style: TextStyle(fontSize: 10.0,color: Colors.white,)  
              ),  
            ),  
            ButtonBar(
              alignment: MainAxisAlignment.spaceAround,  
              children: <Widget>[  
                RaisedButton(  
                  shape: 
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
  ),
                  child: const Text('Play'),  
                  onPressed: () {/* ... */
                  Get.to(SpecificGame(), arguments: [title]);
                  },  
                ),  
                RaisedButton(  
                  child: const Text('Details'),  
                  shape: 
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
  ),
                  onPressed: () {/* ... */
                  Get.to(SpecificDetail(), arguments: [title]);
                  },  
                ),  
              ],  
            ),  
          ],  
        ),  
      ),  
    );  
  }  
}  