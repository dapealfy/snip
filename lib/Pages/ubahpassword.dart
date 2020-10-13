import 'package:flutter/material.dart';
import 'package:snip/main.dart';

class UbahPassword extends StatefulWidget {
  @override
  _UbahPasswordState createState() => _UbahPasswordState();
}

class _UbahPasswordState extends State<UbahPassword> {
  FocusNode newpasswordFocusNode = new FocusNode();
  FocusNode oldpasswordFocusNode = new FocusNode();
  FocusNode confirmFocusNode = new FocusNode();
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
                      MaterialPageRoute(builder: (context) => Mainpage()),
                      );
                      }
                    ),
                    backgroundColor: Colors.transparent, 
                    elevation: 0.0, 
                  ),
      body: ListView(children: <Widget>[
        Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background_image_2.jpg'),
                  fit: BoxFit.fill),
            ),
              child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 230,
                ),
                Container(
                height:MediaQuery.of(context).size.height-230,
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
                      "UBAH PASSWORD",
                      style: TextStyle(
                        color: Color(0XFF2f2f2f),
                        fontSize: 25,
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
                          obscureText: _kondisiPassword,
                          autofocus: false,
                          focusNode: oldpasswordFocusNode,
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
                            fontSize: oldpasswordFocusNode.hasFocus ? 24 : 18.0,
                            color: oldpasswordFocusNode.hasFocus ? Colors.blue:Colors.grey),
                            labelText: 'Old Password',
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
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Center(
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(splashColor: Colors.transparent),
                        child: TextFormField(
                          obscureText: _kondisiPassword,
                          autofocus: false,
                          focusNode: newpasswordFocusNode,
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
                            fontSize: newpasswordFocusNode.hasFocus ? 24 : 18.0,
                            color: newpasswordFocusNode.hasFocus ? Colors.blue:Colors.grey),
                            labelText: 'New Password',
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
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
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
                            labelText: 'Confirm New Password',
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
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
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
