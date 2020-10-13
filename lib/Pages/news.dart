import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class News extends StatelessWidget {
  News({this.gambar, this.judul, this.menu, this.detailtext, this.date});
  final String judul;
  final String gambar;
  final String menu;
  final String detailtext;
  final String date;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailBerita(
                    detailtext: detailtext,
                    title: judul,
                    image: gambar,
                    date: date,
                    menu: menu,
                  )),
        );
      },
      child: Container(
        width: 340.0,
        margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          image: DecorationImage(
              image: NetworkImage(gambar),
              fit: BoxFit.fill,
              colorFilter: new ColorFilter.mode(
                  Colors.grey.withOpacity(0.5), BlendMode.dstATop)),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        height: 160,
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              verticalDirection: VerticalDirection.up,
              children: [
                Container(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Container(
                      width: 15.0,
                    ),
                    Container(
                      child: Text(
                        date,
                        style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[100]),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Container(
                      width: 15.0,
                    ),
                    Container(
                      width: 315.0,
                      child: Text(
                        judul,
                        overflow: TextOverflow.ellipsis,
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Container(
                      width: 15.0,
                    ),
                    Container(
                      child: Text(
                        menu,
                        style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[100]),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DetailBerita extends StatelessWidget {
  DetailBerita({
    this.title,
    this.image,
    this.detailtext,
    this.menu,
    this.date,
  });
  final String title;
  final String image;
  final String detailtext;
  final String menu;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SNIPBISA",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          new Container(
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.black, width: 15)),
                image: DecorationImage(
                  image: NetworkImage(
                    image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10, left: 10),
                    child: Row(
                      children: [
                        Text(
                          menu,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10, left: 10),
                    child: Row(
                      children: <Widget>[
                        Container(
                            constraints: BoxConstraints(maxWidth: 340),
                            child: Text(
                              title,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19.0,
                                  color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10, left: 10),
                    child: Row(
                      children: [
                        Text(
                          date,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: RichText(
                text: TextSpan(
                    text: detailtext, style: TextStyle(color: Colors.black)),
                textAlign: TextAlign.justify,
              )),
        ],
      )),
    );
  }
}

class WhatsTrending extends StatelessWidget {
  WhatsTrending(
      {this.menu, this.title, this.gambar, this.date, this.detailtext});
  final String menu;
  final String title;
  final String gambar;
  final String date;
  final String detailtext;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailBerita(
                    detailtext: detailtext,
                    title: title,
                    image: gambar,
                    date: date,
                    menu: menu,
                  )),
        );
      },
      child: Container(
        width: 340,
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 10.0,
            ),
            Container(
              height: 180,
              width: 320,
              margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      gambar,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Container(height: 10.0),
            Container(
              width: 320,
              margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        menu,
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    height: 10.0,
                  ),
                  Container(
                    child: Text(title,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2),
                  ),
                  Container(
                    height: 10.0,
                  ),
                  Container(
                    child: Text(detailtext,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 6),
                  ),
                  Container(
                    height: 10.0,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          date,
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
