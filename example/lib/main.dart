import 'package:beautiful_alert_dialog/beautiful_alert_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyCustomAlertDialogPage(),
    );
  }
}

class MyCustomAlertDialogPage extends StatefulWidget {
  const MyCustomAlertDialogPage({Key? key}) : super(key: key);

  @override
  _MyCustomAlertDialogPageState createState() =>
      _MyCustomAlertDialogPageState();
}

class _MyCustomAlertDialogPageState extends State<MyCustomAlertDialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Text("Custom Alert Dialog"),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            await CustomAlertBox.showCustomAlertBox(
                context: context,
                willDisplayWidget: Container(
                  height: 200,
                  alignment: Alignment.center,
                  child: Text("Helo"),
                ));
          },
          label: Text('Open alert dialog'),
          icon: Icon(Icons.open_in_browser),
          backgroundColor: Colors.pink,
        ));
  }
}
