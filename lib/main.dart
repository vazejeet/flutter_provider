import 'package:flutter/material.dart';
import 'package:flutter_provider/homepage.dart';
import 'package:flutter_provider/provider/count_provider.dart';
import 'package:flutter_provider/screen/countexample.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
    create: (_) =>CountProvider(),
    
   child: MaterialApp(
      title: 'Flutter Demo',
      home: countExample(),
      )
    );
  }
}
