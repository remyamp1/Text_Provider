import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_provider/text_provider.dart';

class ChangeText extends StatefulWidget{
  @override
  State<ChangeText> createState()=> _ChangeTextstate();

}
class _ChangeTextstate extends State<ChangeText>{
  @override
  Widget build(BuildContext context){
    final textinputprovider=Provider.of<TextinputProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: 
        Text("Text Change Provider"),
      ),
      body: Center(
        child: 
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: textinputprovider.textchangenwe,
                decoration: InputDecoration(border: OutlineInputBorder()),
                
              ),
              SizedBox(height: 15,),
              Text("You typed:${textinputprovider.text}")
            ],
          ),
        ),
      ),
    );
  }
}