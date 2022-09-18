import 'package:flutter/material.dart';
import 'package:session_nine/screens/home_screen.dart';
import 'package:session_nine/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ControlScreen extends StatefulWidget {



  @override
  State<ControlScreen> createState() => _ControlScreenState();
}

class _ControlScreenState extends State<ControlScreen> {
  String? email;



  @override
  Widget build(BuildContext context) {
    return email==null? LoginScreen():HomeScreen();
  }

  @override
  void initState(){
    super.initState();
    getData();
  }

  getData() async{
    SharedPreferences preferences=await SharedPreferences.getInstance();
    setState(() {
      email=preferences.getString("email");
      print(email);
    });
  }
}
