import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:torch/home_page.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    // To force application stay in portrait mode
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);

   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Torch',
     home:HomePage(),
   );
  }
  
}
