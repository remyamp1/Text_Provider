import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_provider/text.dart';
import 'package:text_provider/text_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 
      
       ChangeNotifierProvider(
        create: (context) => TextinputProvider(),
         child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: ChangeText(),
               
             ),
       );
  }
}
     