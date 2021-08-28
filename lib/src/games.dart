import 'package:flutter/material.dart';
import 'package:gamify/src/card.dart';
import 'package:gamify/src/drawer.dart';

class GamesPage extends StatelessWidget {
  const GamesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
      title: Text("Game of Health"),
      
      ),
      drawer: MyDrawer(),
      
      body: SingleChildScrollView(
        child: Wrap(
        // spacing: 5.0, // gap between adjacent chips
        // runSpacing: 4.0, // gap between lines
        children: <Widget>[
          MyCardWidget(title: "First Aid", subtitle: "Sample firt aid", color: Colors.red,),
          MyCardWidget(title: "Cancer Disease", subtitle: "Sample firt aid", color: Colors.blue,),
          MyCardWidget(title: "Heart Disease", subtitle: "Sample firt aid", color: Colors.purple,),
          MyCardWidget(title: "Physical Injury", subtitle: "Sample firt aid", color: Colors.green,),
          MyCardWidget(title: "Kidney Disease", subtitle: "Sample firt aid", color: Colors.orangeAccent,),
          MyCardWidget(title: "Diabetes", subtitle: "Sample firt aid", color: Colors.teal,),
          MyCardWidget(title: "Dengue", subtitle: "Sample firt aid", color: Colors.indigoAccent,),
          MyCardWidget(title: "Bacterial Infection", subtitle: "Sample firt aid", color: Colors.redAccent,),
          MyCardWidget(title: "Virus", subtitle: "Sample firt aid", color: Colors.blueAccent,),
          MyCardWidget(title: "Blood Problems", subtitle: "Sample firt aid", color: Colors.pink,),
          // MyCardWidget(),
          // MyCardWidget(),
          // MyCardWidget(),
        ],
      ),
      ),
      
    );
  }
}