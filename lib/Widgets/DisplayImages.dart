// ignore_for_file: file_names, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

/// Flutter app about Favorites Movies using ListView
/// CS 394 - Framework Based Development - Project 3
/// Pranav Rathod
/// Professor Ugo Buy

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:pratho2_project3_cs394/Resources/GlobalHelper.dart';

// import "package:widget_views/Resources/GlobalHelper.dart";

  /*
   * Class is required to return a widget, for this it needs
   * the index so it can access the helper(Provider class)
   */
class DisplayImages extends StatelessWidget {
  // Future <void> _launched;
  // Declare variables that are required to invoke this class
  final int index;
  final GlobalHelper helper;
  // constructor
  DisplayImages(this.index, this.helper, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(helper.getNames().elementAt(index)),
      ),
      body : GestureDetector(
        onTap: () async {
           // print ("Button Clicked ${helper.getImdb().elementAt(index)}");
          // print(helper.getImdb().elementAt(index)),
          //  url = helper.getImdb().elementAt(index);
           await launch(helper.getImdb().elementAt(index));
          // if (await canLaunch(helper.getImdb().elementAt(index))) {
          //   await launch(helper.getImdb().elementAt(index));
          // } else {
          //   throw 'Could not launch $helper.getImdb().elementAt(index)';
          // }
          // _launched = _launchURL(helper.getImdb().elementAt(index))
        },
        child:  Container(
          child: Center(
            // Load an image that is located in the assets folder
            child: Image.asset(
              helper.getImages().elementAt(index),
              // Get dimensions of actual device to make it fit better
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill,
            ),
          ),
        )
      )


    );

  }
  // Future<void> _launchURL (String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

}
