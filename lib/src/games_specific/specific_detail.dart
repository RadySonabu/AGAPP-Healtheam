import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gamify/src/drawer.dart';
import 'package:get/get.dart';

class SpecificDetail extends StatelessWidget {
  const SpecificDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     var _random = new Random();
 var _diceface = _random.nextInt(500) ;
 var _currentLevel = _random.nextInt(50) ;
    var data = Get.arguments;
    return Scaffold(
      appBar: AppBar(centerTitle: true,
      title: Text("Game of Health"),
      
      ),
      drawer: MyDrawer(),
      
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${data[0]}', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            Text('You have $_diceface points', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text('Current level: $_currentLevel', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
          ],
        )
      ),
    );
  }
}