import 'package:flutter/material.dart';
import 'LoginPage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp();

  @override
 Widget build(BuildContext){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Latihan Quiz",
    theme: ThemeData(
      primarySwatch: Colors.blue
    ),
    home: LoginPage(),
  );
 }
}