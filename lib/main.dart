/// Flutter app about Favorites Movies using ListView
/// CS 394 - Framework Based Development - Project 3
/// Pranav Rathod
/// Professor Ugo Buy

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Resources/GlobalHelper.dart';
import 'Widgets/MovieListView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return a provider widget so same info can be accessed in other dart files
    return Provider(
        create: (_) => GlobalHelper(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          // Just comment out and uncomment the one to run
          home: const Advanced_ListView(),
          //home: Basic_GridView(),
        ));
  }
}