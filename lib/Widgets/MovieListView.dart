// ignore_for_file: camel_case_types, prefer_const_constructors, file_names
/// Flutter app about Favorites Movies using ListView
/// CS 394 - Framework Based Development - Project 3
/// Pranav Rathod
/// Professor Ugo Buy
///
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'DisplayImages.dart';
import '../Resources/GlobalHelper.dart';
import 'package:provider/provider.dart';

import 'DisplayInfo.dart';

/*
 * Class will display images similar to what RecyclerView Class does in Android
 * (optimization for rendering widgets when in view or not)
 */
class Advanced_ListView extends StatefulWidget {
  const Advanced_ListView({Key? key}) : super(key: key);

  @override
  _Basic_ListViewState createState() => _Basic_ListViewState();
}
enum popMenu {info, wikipedia, imdb}

/*
 * Extend the state class Advance_GridView
 */
class _Basic_ListViewState extends State<Advanced_ListView> {
  // Declare instance to access provider class
  static late GlobalHelper helper;
  // late popMenu _selection;
  // final navigatorKey = GlobalKey<NavigatorState>();
  // var color = const Color(0x152238);
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    // Initialize provider instance
    helper = Provider.of<GlobalHelper>(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // navigatorKey: navigatorKey,
        home:Scaffold(
            appBar: AppBar(
              // Here we take the value from the MyHomePage object that was created by
              // the App.build method, and use it to set our appbar title.
              title: Text("Pranav's Favorite Movies"),
              centerTitle: true,
            ),
            backgroundColor: CupertinoColors.systemIndigo,
            // GridView.builder does what RecyclerView Class does, optimizes the rendering of widgets
            body: ListView.separated(
              itemCount: helper.getImages().length,
              itemBuilder: (BuildContext ctx, index) {
                return
                  Container(
                    // height: 150,
                    margin: EdgeInsets.all(5),
                    // alignment: Alignment.center,
                    child:
                    GestureDetector(
                      onLongPressStart: (LongPressStartDetails details) {
                        // details global positions will make the popmenu show up where the image was pressed
                        _showPopupMenu(details.globalPosition, index);
                      },

                      // Normal tap, will pass the index of the image so it can be displayed
                      // in a different page
                      onTap: () {
                        // print("Image clicked: $index");
                        displayImage(context, index);
                      },
                      // Add a different type of text for each image (white text on top of images)
                      // by using the stack class
                      child: Card(
                        elevation: 20,
                        child : Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(15),
                              child: Center(
                                // Load an image that is located in the assets folder
                                child: Image.asset(
                                  helper.getImages().elementAt(index),
                                  // Get dimensions of actual device to make it fit better
                                  width: MediaQuery.of(context).size.width * .3,
                                  height: MediaQuery.of(context).size.height * .2,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              width: 210,
                              child: Center (
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    // padding: EdgeInsets.all(10),

                                    children: <Widget>[
                                      Text(helper.getNames().elementAt(index),
                                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                                      ),
                                      Center(
                                          child: Text(helper.getDescription().elementAt(index),
                                            // style: TextStyle(fontSize: 18,)
                                          )
                                      )

                                    ],

                                  )
                              ),
                              decoration: BoxDecoration(
                                // color: Colors.black,
                                  borderRadius: BorderRadius.circular(15)),
                              //     ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  );

              }, separatorBuilder: (BuildContext context, int index) {
              return const SizedBox (
                  height: 10,
                  width: 0
              );
            },

            )
          //
        )
    );
  }

  // Method will take the index passed so it can display the image in
  // different page
  void displayImage(BuildContext ctx, int index) {
    // Different method of switching to another page and passing information so it can return a widget
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) {
        return DisplayImages(index, helper);
      },
    )).then((value) => print("DisplayImage page was closed"));

  }

  /* Method is in charge of displaying pop up menu at the same
   * position where the image was clicked
   * It needs the size of the physical device to set the location
   * where it will display the menu
   * Method will run async while app displays other information
   */
  _showPopupMenu(Offset offset, int index) async {
    final screenSize = MediaQuery.of(context).size;
    double left = offset.dx;
    double top = offset.dy;
    double right = screenSize.width - offset.dx;
    double bottom = screenSize.height - offset.dy;


    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(left, top, right, bottom),
      items: [
        PopupMenuItem(
            child: Text("Info"),
            onTap: () => Future(
                  () => Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (_) => DisplayInfo(index, helper)
                ),
              ).then((value) => print("DisplayInfo page was closed")),
            )

          // navigatorKey.currentState!.push(MaterialPageRoute(builder: (context) => DisplayInfo(index, helper)));
          // displayImage(context, index);
          // },
        ),
        PopupMenuItem(
          child: Text("Wikipedia"),
          onTap: () async {
            await launch(helper.getWiki().elementAt(index));
          },
        ),
        PopupMenuItem(
            child: Text("IMDB"),
            onTap: () async {
              await launch(helper.getWiki().elementAt(index));
            }
        ),
      ],
      elevation: 8.0,
    );
    // following instructions.....
  }

}