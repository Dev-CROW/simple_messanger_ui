import 'package:flutter/material.dart';

import 'module/messanger_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Messanger UI',
      home: MessangerScreen(),
    );
  }
}


