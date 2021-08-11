import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlterTheme extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: DarkMode.instance.themeMode, 
      onChanged: (value){
        DarkMode.instance.changeTheme();      
      });
  }
}

class DarkMode extends ChangeNotifier {
  static DarkMode instance = DarkMode();
  bool themeMode = false;
  
  changeTheme() {
    themeMode = !themeMode;
    notifyListeners();
  }
}


