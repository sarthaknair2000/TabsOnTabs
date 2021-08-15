import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabsontabs/medicinedata.dart';
import 'home.dart';
//22 0.041, 24 0.045, 18 0.034, 14 0.026, 16 0.03
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (ctx)=> Medicines())
      ],
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}

