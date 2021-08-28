import 'package:flutter/material.dart';

class MyCardWidget2 extends StatelessWidget {  
  MyCardWidget2({Key? key, required this.title, required this.subtitle, required this.color}) : super(key: key);  
   String title;
   String subtitle;
   Color color;
  @override  
  Widget build(BuildContext context) {  
    return Container(  
      width: 200,  
      height: 100,  
      padding: new EdgeInsets.all(5.0),  
      child: Card(  
        shape: RoundedRectangleBorder(  
          borderRadius: BorderRadius.circular(15.0),  
        ),  
        color: color,  
        elevation: 10,  
        child: Column(  
          mainAxisSize: MainAxisSize.min,  
          children: <Widget>[  
             ListTile(  
              leading: Icon(Icons.album, size: 20),  
                            title: Text('$title', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),), 

              subtitle: Text(  
                'Best of Sonu Nigam Music.',  
                style: TextStyle(fontSize: 10.0,color: Colors.white,)  
              ),  
            ),  
             
          ],  
        ),  
      ),  
    );  
  }  
}  