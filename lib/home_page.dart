import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'first_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter GetX Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(FirstPage());
              },
              child: Text("Navigate to next screen"),
            ),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(title: 'GetX dialog');
              },
              child: Text("Alert Dialog Button"),
            ),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                Get.snackbar("GetX", "GetX snackBar",
                    snackPosition: SnackPosition.BOTTOM);
              },
              child: Text("SnackBar Display"),
            ),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    child: Wrap(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.music_note,
                            color: Colors.red,
                          ),
                          title: Text("Music"),
                          onTap: (){},
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.message,
                            color: Colors.red,
                          ),
                          title: Text("Message"),
                          onTap: (){},
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Text("BottomSheet Display"),
            ),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                Get.changeTheme(ThemeData.dark());
              },
              child: Text("Change Theme to Dark"),
            ),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                Get.changeTheme(ThemeData.light());
              },
              child: Text("Change Theme to light"),
            ),
          ],
        ),
      ),
    );
  }
}
