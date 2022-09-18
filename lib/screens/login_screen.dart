
import 'package:flutter/material.dart';
import 'package:session_nine/functions/navigations.dart';
import 'package:session_nine/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';





class LoginScreen extends StatelessWidget {


  var email =TextEditingController();
  var password =TextEditingController();








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login Screen'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: email,
            decoration: InputDecoration(
              labelText: 'email',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: password,
            decoration: InputDecoration(
              labelText: 'password',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
            setData();
            navigate(context, HomeScreen());
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }

  setData()async{
    SharedPreferences preferences= await SharedPreferences.getInstance();
    preferences.setString("email", email.text);
    preferences.setString("password", password.text);
    print(preferences.getString("email"));
    print(preferences.getString("password"));
    
  }
}