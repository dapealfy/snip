import 'dart:convert';
import 'package:snip/Pages/Daftar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:snip/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool _isLoading = false;
  FocusNode passwordFocusNode = new FocusNode();
  FocusNode emailFocusNode = new FocusNode();
  bool _kondisiPassword = true;
  void _switchpassword() {
    setState(() {
      _kondisiPassword = !_kondisiPassword;
    });
  }
  signIn(String name, pass) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {
      'name': name,
      'password': pass
    };
    var jsonResponse = null;
    var response = await http.post("https://snip-id.com/api/auth/signin", body: data);
    if(response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if(jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });
        sharedPreferences.setString("token", jsonResponse['token']);
        Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mainpage()));
      }
    }
    else {
      setState(() {
        _isLoading = false;
      });
      print(response.body);
    }
  }

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background_image_2.jpg'),
              fit: BoxFit.fill),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 20,
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "LOGIN SNIPBISA",
                        style: TextStyle(
                          color: Color(0XFF2f2f2f),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Center(
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(splashColor: Colors.transparent),
                        child: TextFormField(
                          controller: emailController,
                          focusNode: emailFocusNode,
                          style: TextStyle(fontSize: 22.0, color: Colors.black),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            alignLabelWithHint: true,
                            hintText: "ex:john@gmail.com",
                            labelStyle: TextStyle(
                                fontSize: emailFocusNode.hasFocus ? 24 : 18.0,
                                color: emailFocusNode.hasFocus
                                    ? Colors.blue
                                    : Colors.grey),
                            labelText: 'Email',
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Center(
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(splashColor: Colors.transparent),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: _kondisiPassword,
                          autofocus: false,
                          focusNode: passwordFocusNode,
                          style: TextStyle(fontSize: 22.0, color: Colors.black),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            alignLabelWithHint: true,
                            hintText: "********",
                            labelStyle: TextStyle(
                                fontSize:
                                    passwordFocusNode.hasFocus ? 24 : 18.0,
                                color: passwordFocusNode.hasFocus
                                    ? Colors.blue
                                    : Colors.grey),
                            labelText: 'Password',
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                _switchpassword();
                              },
                              child: Icon(
                                _kondisiPassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: _kondisiPassword
                                    ? Colors.grey
                                    : Colors.blue,
                              ),
                            ),
                            isDense: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: RaisedButton(
                      padding: EdgeInsets.fromLTRB(150, 10, 150, 10),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: Colors.blue,
                       onPressed: emailController.text == "" || passwordController.text == "" ? null : () {
                      setState(() {
                      _isLoading = true;
                                  });
                      signIn(emailController.text, passwordController.text);
                                  },
                      child: new Text("Login "),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(105, 20, 71, 20),
                    child: Center(
                      child: Row(
                        children: [
                          Text(
                            "If you Don't have an account?",
                            style: TextStyle(fontSize: 11),
                          ),
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Register',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 11.0),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DaftarPages()),
                                      );
                                    },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
