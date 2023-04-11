
import 'package:flutter/material.dart';

class CheckConnectScreen extends StatelessWidget {
  int? isChecked;

  CheckConnectScreen({Key? key, required this.isChecked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('isCHecked = ${isChecked}');
    if(isChecked == 1) {
      return const Text('Connect is TRUE');
    } else {
      return const Text('Connect is FALSE');
    }
  }

}