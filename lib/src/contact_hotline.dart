import 'package:flutter/material.dart';
import 'package:gamify/src/card2.dart';
import 'package:gamify/src/drawer.dart';

import 'card.dart';

class ContactHotline extends StatelessWidget {
  const ContactHotline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
      title: Text("Game of Health"),
      
      ),
      drawer: MyDrawer(),
      
      body: Wrap(
  // spacing: 5.0, // gap between adjacent chips
  // runSpacing: 4.0, // gap between lines
  children: <Widget>[
    MyCardWidget2(title: "Emergency", subtitle: "Sample first aid", color: Colors.red,),
    MyCardWidget2(title: "Police", subtitle: "Sample first aid", color: Colors.blue,),
    MyCardWidget2(title: "Fire Injury", subtitle: "Sample first aid", color: Colors.blue,),
    MyCardWidget2(title: "Telemedicine", subtitle: "Sample first aid", color: Colors.greenAccent,),
    MyCardWidget2(title: "Pharmacy", subtitle: "Sample first aid", color: Colors.yellowAccent,),
    // MyCardWidget(),
    // MyCardWidget(),
    // MyCardWidget(),
  ],
),
      
    );
  }
}