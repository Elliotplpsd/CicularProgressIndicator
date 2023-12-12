import 'dart:math';

import 'package:flutter/material.dart';

void main() 
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      title: 'Flutter Demo',
      theme: ThemeData
      (
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Counter()
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();

  
}

class _CounterState extends State<Counter> {

  double progress=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar(title: const Text("Circular Progress Indicator", style: TextStyle(color: Color.fromARGB(255, 3, 252, 161)),),centerTitle: true,),
      body: Center
      (
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: 
          [
            CircularProgressIndicator
            (
              value: progress,
              color: Colors.red,
              backgroundColor: Colors.blue,
              strokeWidth: 7,
              strokeAlign: CircularProgressIndicator.strokeAlignOutside,
              strokeCap: StrokeCap.round,
            ),
            const Divider(height: 50,),
            FloatingActionButton(onPressed: (){setState(() {if(progress < 0.9){progress+=0.1;}});},backgroundColor: Colors.green,),
            const Divider(height: 50,),
            FloatingActionButton(onPressed: (){setState(() {if(progress > 0.1){progress-=0.1;}});},backgroundColor: Colors.red,),
          ],
        ),)
      );
    
  }
}