import 'package:flutter/material.dart';
import 'package:gamify/src/drawer.dart';
import 'package:get/get.dart';

class SpecificGame extends StatelessWidget {
  const SpecificGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    return Scaffold(
      appBar: AppBar(centerTitle: true,
      title: Text("Game of Health"),
      
      ),
      drawer: MyDrawer(),
      
      // body: Center(child: Text('This is a specific game for ${data[0]}'),),
      body: Container(
          color: Colors.grey[200],
          child: new Image.network(
            'https://images.pexels.com/photos/1525043/pexels-photo-1525043.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
            fit: BoxFit.fill,
          ),
          alignment: Alignment.center,
        ),
    );
  }
}