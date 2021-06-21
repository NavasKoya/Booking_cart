import 'package:flutter/material.dart';
import 'package:nullsafety_test/diacritech/book_cart_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Cart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BookCartPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}