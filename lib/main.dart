import 'package:flutter/material.dart';
import 'package:gamify/src/dashboard.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'AGAPP',
      theme: ThemeData(
        
        
        
        
        
        
        
        
        
        primarySwatch: Colors.green,
      ),
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}


  
  
  
  
