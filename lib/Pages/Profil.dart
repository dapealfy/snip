import 'package:flutter/material.dart';
import 'package:snip/main.dart';
import 'package:snip/Pages/ubahpassword.dart';

class Profilpage extends StatefulWidget {
  @override
  _ProfilpageState createState() => _ProfilpageState();
}

class _ProfilpageState extends State<Profilpage> {
  FocusNode emailFocusNode = new FocusNode();
  FocusNode usernameFocusNode = new FocusNode();

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
                      MaterialPageRoute(builder: (context) => Mainpage()),
                      );
                      }
                    ),
                    backgroundColor: Colors.transparent, 
                    elevation: 0.0, 
                  ),
      body:  ListView(
            children:<Widget>[
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
                Container(
                  height: 240,
                ),
                Container(
                height:MediaQuery.of(context).size.height-240,
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight:Radius.circular(30)),
                ),
                child: Column(children: <Widget>[
                Container(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Center(
                    child: Text(
                      "PROFIL SNIPBISA",
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
                            hintText: "New Username",
                            labelStyle: TextStyle(
                            fontSize: usernameFocusNode.hasFocus ? 24 : 18.0,
                            color: usernameFocusNode.hasFocus ? Colors.blue : Colors.grey),
                            labelText: 'Change Username',
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
                            hintText: "New Email",
                            labelStyle: TextStyle(
                            fontSize: emailFocusNode.hasFocus ? 24 : 18.0,
                            color: emailFocusNode.hasFocus ? Colors.blue : Colors.grey),
                            labelText: 'Change Email',
                            filled: true,
                            fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                   Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child:ButtonTheme(
                    minWidth: 350.0,
                    height: 40.0,
                    child: RaisedButton(
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Mainpage()),
                        );
                      },
                      child: new Text("Simpan Perubahan"),
                    ),
                    ),
                  ),
                  Container(
                     margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child:ButtonTheme(
                    minWidth: 350.0,
                    height: 40.0,
                    child: RaisedButton(
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: Colors.red,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UbahPassword()),
                        );
                      },
                      child: new Text("Ubah Password"),
                    ),
                    ),
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
