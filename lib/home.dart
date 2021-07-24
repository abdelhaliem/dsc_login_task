import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:login_task1_dsc/widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _x = GlobalKey<ScaffoldState>();

  snakBar() {
    final sBar = SnackBar(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      duration: Duration(seconds: 2),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.done,
            color: Colors.blue,
          ),
          SizedBox(
            width: 5,
          ),
          Text("your successfully login",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              )),
        ],
      ),
    );
    _x.currentState.showSnackBar(sBar);
  }

  myDilag() {
    var ad = CupertinoAlertDialog(
      content: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Are you sure you want to sing in"),
            ),
            Divider(),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel"),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      snakBar();
                      Navigator.pop(context);
                    });
                  },
                  child: Text("Ok"),
                ),
              ],
            )
          ],
        ),
      ),
    );
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return ad;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _x,
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          TextForm(),
          SizedBox(
            height: 50,
          ),
          TextFormPassword(),
          SizedBox(
            height: 30,
          ),
          NeumorphicButton(
            child: Text(
              "LogIn",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            style: NeumorphicStyle(
              depth: 2,
            ),
            onPressed: () {
              myDilag();
            },
          )
        ],
      ),
    );
  }
}
