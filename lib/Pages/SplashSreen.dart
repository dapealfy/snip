import 'package:flutter/material.dart';
import 'package:snip/main.dart';
import 'package:snip/Pages/Login_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashSreen extends StatefulWidget {
  @override
  _SplashSreenState createState() => _SplashSreenState();
}

class _SplashSreenState extends State<SplashSreen> {
  SharedPreferences sharedPreferences;

  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  checkLoginStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();
    var token = sharedPreferences.getString("token");
    if (sharedPreferences.getString("token") == '' ||
        sharedPreferences.getString("token") == null) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Loginpage()));
    } else if (sharedPreferences.getString("token") == token) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Mainpage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Center(
          child: Text(
            "SNIPBISA",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
