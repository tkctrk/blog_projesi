import 'package:blog_projesi/page/home_page.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
void Main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tarık Kocatürk',
        home: Scaffold(
          backgroundColor: Color.fromRGBO(116, 15, 134, 0.396),
          body: HomePage(),
        ));
  }
}
