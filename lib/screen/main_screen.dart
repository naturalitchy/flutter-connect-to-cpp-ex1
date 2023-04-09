
import 'package:connect_flutter_to_cpp_ex3/cpp/check_connect/check_connect.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  int? isCheckConnect = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Center(

          child: TextButton(
            onPressed: () {
              isCheckConnect = checkConnectDart();
            },
            child: Column(
              children: [
                Text('Hello'),
                if (true) Text('World'),
                Text('Flutter'),
                Container(
                  child: (() {
                    if (true) {
                      return Text('Hello');
                    } else {
                      return Text('World');
                    }
                  })(),
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