// ignore_for_file: file_names, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_constructors
/// Flutter app about Favorites Movies using ListView
/// CS 394 - Framework Based Development - Project 3
/// Pranav Rathod
/// Professor Ugo Buy

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pratho2_project3_cs394/Resources/GlobalHelper.dart';

// import "package:widget_views/Resources/GlobalHelper.dart";

/*
   * Class is required to return a widget, for this it needs
   * the index so it can access the helper(Provider class)
   */
class DisplayInfo extends StatelessWidget {
  final int index;
  final GlobalHelper helper;
  // final String director = helper.getDirectors().elementAt(index);

  // constructor
  DisplayInfo(this.index, this.helper, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(helper.getNames().elementAt(index)),
        ),
        backgroundColor: Colors.deepOrange,
        body : Container (
          padding: const EdgeInsets.all(20.0),
        child : ListView (
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Text("Director : ", style: TextStyle(fontSize: 20)),
                title: Text(helper.getDirectors().elementAt(index), style: TextStyle(fontSize: 18)),
              )
            ),
            Card(
                child: ListTile(
                  leading: Text("Cast : ", style: TextStyle(fontSize: 20)),
                  title: Text(helper.getCast().elementAt(index), style: TextStyle(fontSize: 18)),
                )
            ),
            Card(
                child: ListTile(
                  leading: Text("Duration : ", style: TextStyle(fontSize: 20)),
                  title: Text(helper.getRuntime().elementAt(index), style: TextStyle(fontSize: 18)),
                )
            ),
            Card(
                child: ListTile(
                  leading: Text("IMDb Rating : ", style: TextStyle(fontSize: 20)),
                  title: Text(helper.getimdbRating().elementAt(index), style: TextStyle(fontSize: 18)),
                )
            ),
            Card(
                child: ListTile(
                  leading: Text("Rotten Tomatoes : ", style: TextStyle(fontSize: 20)),
                  title: Text(helper.getRTRating().elementAt(index), style: TextStyle(fontSize: 18)),
                )
            ),

            // // Text("Director : ${helper.getDirectors().elementAt(index)}", style: TextStyle(fontSize: 20) ),
            // // Text("Cast : ${helper.getCast().elementAt(index)}", style: TextStyle(fontSize: 20)),
            // Text("Duration : ${helper.getRuntime().elementAt(index)}", style: TextStyle(fontSize: 20)),
            // Text("IMDb Rating : ${helper.getimdbRating().elementAt(index)}", style: TextStyle(fontSize: 20)),
            // Text("Rotten Tomatoes : ${helper.getRTRating().elementAt(index)}", style: TextStyle(fontSize: 20)),

            // Text(helper.getNames().elementAt(index))
          ],
        ),
        )


    );

  }

}
