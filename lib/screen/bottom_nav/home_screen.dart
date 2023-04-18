
import 'package:connect_flutter_to_cpp_ex3/const/const_var.dart';
import 'package:connect_flutter_to_cpp_ex3/cpp/check_connect/check_connect.dart';
import 'package:connect_flutter_to_cpp_ex3/screen/check_connect_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  //================ CPP Connect Button Clicked ================
  void comPortButtonClicked() {
    setState(() {
      ConstVar.comPortConn = checkConnectDart();
      if(ConstVar.comPortConn == 1) {
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
  //================ CPP Connect Button Clicked end ================

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    comPortButtonClicked();
                  },
                  child: Center(
                    child: Text('COM Port Connect!'),
                  ),
                ),
                SizedBox(width: 20.0),
                Text(
                  ' : ',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(width: 20.0),
                CheckConnectScreen(isChecked: ConstVar.comPortConn),
              ],
            ),
          ],
        ),
    );


    // return Scaffold(
    //   body: Container(
    //     child: Center(
    //       child: TextButton(
    //         onPressed: () {
    //           cppConnectButtonClicked();
    //         },
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Text('CPP Connect Button !! '),
    //             SizedBox(height: 50.0,),
    //             Container(
    //               child: CheckConnectScreen(isChecked: isCheckConnect),
    //             ),
    //             SizedBox(height: 50.0,),
    //             OutlinedButton(
    //               onPressed: () {},
    //               child: Center(
    //                 child: Text('Execute Game'),
    //               )
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //
    //   ),
    // );

  }
}











/*
Future popUpOpen() {
  return showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Text('Title'),
      content: Text('Content'),
    ),
  );
}
*/

/* 첫번째 방법
child: (() {
  if (true) {
    return Text('Hello');
  } else {
    return Text('World');
  }
})(),
*/

/*
child: Text((() {
  if(true){
    return "tis true";
  }
})()),
*/