import 'package:flutter/material.dart';
class TextinputProvider extends ChangeNotifier{
  String _text='';

  String get text=>_text;

  void textchangenwe(String value){
    _text=value;
    notifyListeners();
  }
}