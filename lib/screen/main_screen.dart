
import 'package:connect_flutter_to_cpp_ex3/cpp/check_connect/check_connect.dart';
import 'package:connect_flutter_to_cpp_ex3/screen/check_connect_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int? isCheckConnect = 0;

  void cppConnectButtonClicked() {
    setState(() {
      isCheckConnect = checkConnectDart();
      if(isCheckConnect == 1) {
        showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: Text('Checking'),
            content: Text('Connect Complete!!'),
          ),
        );
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: Text('Checking'),
            content: Text('Connect Fail!!'),
          ),
        );
      }

    });
  }

  Future popUpOpen() {
    return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text('Title'),
        content: Text('Content'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: TextButton(
            onPressed: () {
              // isCheckConnect = checkConnectDart();
              cppConnectButtonClicked();
            },
            /* 첫번째 방법
            child: (() {
              if (true) {
                return Text('Hello');
              } else {
                return Text('World');
              }
            })(),
            */

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('CPP Connect Button !! '),
                SizedBox(height: 50.0,),
                Container(
                  child: CheckConnectScreen(isChecked: isCheckConnect),
                ),
              ],
            )

          ),

          /*
          child: Text((() {
            if(true){
              return "tis true";
            }
          })()),
          */



        ),
      ),
    );


  }
}