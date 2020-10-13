import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:snip/Pages/Login_state.dart';
class DaftarPages extends StatefulWidget {
  @override
  _DaftarPagesState createState() => _DaftarPagesState();
}

class _DaftarPagesState extends State<DaftarPages> {
  FocusNode passwordFocusNode = new FocusNode();
  FocusNode emailFocusNode = new FocusNode();
  FocusNode confirmFocusNode = new FocusNode();
  FocusNode usernameFocusNode = new FocusNode();
  bool _kondisiPassword = true;
  void _switchpassword() {
    setState(() {
      _kondisiPassword = !_kondisiPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   AppBar(
                    title: Text(''),
                    flexibleSpace: Image(image: AssetImage('assets/images/background_image_2.jpg'),
                  fit: BoxFit.fill),
                    leading: new IconButton(
                      icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
                      onPressed: () {
                        Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Loginpage()),
                      );
                      }
                    ),
                    backgroundColor: Colors.transparent, 
                    elevation: 0.0, 
                  ),
      body: ListView(children: [
      Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background_image_2.jpg'),
                  fit: BoxFit.fill),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(height: 170),
                Container(
                height: MediaQuery.of(context).size.height-170,
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight:Radius.circular(30)),
                ),
                child: Column(children: <Widget>[
                Container(
                  height: 20,
                ),
                Container(
                  child: Center(
                    child: Text(
                      "REGISTER SNIPBISA",
                      style: TextStyle(
                        color: Color(0XFF2f2f2f),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ), 
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Center(
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(splashColor: Colors.transparent),
                        child: TextFormField(
                          focusNode: usernameFocusNode,
                          style: TextStyle(fontSize: 22.0, color: Colors.black),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(      
                            borderSide: BorderSide(color: Colors.white), 
                            ), 
                            focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            ),
                            alignLabelWithHint: true,
                            hintText: "ex:john",
                            labelStyle: TextStyle(
                            fontSize: usernameFocusNode.hasFocus ? 24 : 18.0,
                            color: usernameFocusNode.hasFocus ? Colors.blue : Colors.grey),
                            labelText: 'Username',
                            filled: true,
                            fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Center(
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(splashColor: Colors.transparent),
                        child: TextFormField(
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
                            color: emailFocusNode.hasFocus ? Colors.blue : Colors.grey),
                            labelText: 'Email',
                            filled: true,
                            fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                                      Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Center(
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(splashColor: Colors.transparent),
                        child: TextFormField(
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
                            fontSize: passwordFocusNode.hasFocus ? 24 : 18.0,
                            color: passwordFocusNode.hasFocus ? Colors.blue:Colors.grey),
                            labelText: 'Password',
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: GestureDetector(
                            onTap: () {
                              _switchpassword();
                            },
                            child: Icon(
                              _kondisiPassword ? Icons.visibility_off:Icons.visibility,
                              color: _kondisiPassword ? Colors.grey:Colors.blue,
                            ),
                          ),
                          isDense: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                                        Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Center(
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(splashColor: Colors.transparent),
                        child: TextFormField(
                          obscureText: _kondisiPassword,
                          autofocus: false,
                          focusNode: confirmFocusNode,
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
                            fontSize: confirmFocusNode.hasFocus ? 24 : 18.0,
                            color: confirmFocusNode.hasFocus ? Colors.blue:Colors.grey),
                            labelText: 'Confirm',
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: GestureDetector(
                            onTap: () {
                              _switchpassword();
                            },
                            child: Icon(
                              _kondisiPassword ? Icons.visibility_off:Icons.visibility,
                              color: _kondisiPassword ? Colors.grey:Colors.blue,
                            ),
                          ),
                          isDense: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                    margin:EdgeInsets.only(top:20),
                    child: RaisedButton(
                      padding: EdgeInsets.fromLTRB(150, 10, 150, 10),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Loginpage()),
                        );
                      },
                      child: new Text("Daftar"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(105, 20, 71, 20),
                    child: Center(child: Row(children: [
                    Text("If you already have an account?",style: TextStyle(fontSize: 11),),
                    RichText(text: TextSpan(
                    children: <TextSpan>[
                    TextSpan(
                    text: 'Log In',
                    style: TextStyle(color: Colors.blue, fontSize: 11.0),
                    recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Loginpage()),
                      );
                    },),
                    ],),),
                    ],),),
                  ),
                ],),),
              ],
            ),
          ),
          ],
          ),
    );
  }
}
