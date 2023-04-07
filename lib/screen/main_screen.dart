
import 'package:connect_flutter_to_cpp_ex3/cpp/check_connect/check_connect.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: if(checkConnectDart()) {
            return Text('Hello');
          }
    // child: Text(' @@@@@@@@@@@@@@@@@@@@@@ ${checkConnectDart()}'),
    ),
    }
      ),
    );
  }
}