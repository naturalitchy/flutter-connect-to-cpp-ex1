
import 'dart:math';

import 'package:connect_flutter_to_cpp_ex3/const/const_var.dart';
import 'package:connect_flutter_to_cpp_ex3/screen/bottom_nav/home_screen.dart';
import 'package:connect_flutter_to_cpp_ex3/screen/bottom_nav/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:connect_flutter_to_cpp_ex3/cpp/slider_test/slider_test.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  TabController? _tabController;
  double pitch = 30.0;        // Slider 기본 값
  double roll = 30.0;
  double yaw = 30.0;

  // SettingScreen => execute when slider changed.
  void onPitchChanged(double val) {
    if(!sliderChangeCheck()) {
      return;
    }
    setState(() {
      // pitch = val;
      pitch = sliderTest(val.toInt()).toDouble();
    });
  }
  void onRollChanged(double val) {
    if(!sliderChangeCheck()) {
      return;
    }
    setState(() {
      roll = val;
    });
  }
  void onYawChanged(double val) {
    if(!sliderChangeCheck()) {
      return;
    }
    setState(() {
      yaw = val;
    });
  }
  bool sliderChangeCheck() {
    if(ConstVar.comPortConn == 0) {
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text('Please checking'),
          content: Text('Com port disconnected ! '),
        ),
      );
      return false;
    }
    return true;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController!.addListener(_tabControllerListen);
  }

  _tabControllerListen() {
    setState(() {
      // print("너 움직였네 ?? ");
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController!.removeListener(_tabControllerListen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: TabBarView(
        controller: _tabController,
        children: [
          HomeScreen(),
          SettingScreen(
            pitch: pitch,
            roll: roll,
            yaw: yaw,
            onPitchChanged: onPitchChanged,
            onRollChanged: onRollChanged,
            onYawChanged: onYawChanged,
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _tabController!.index,
        selectedItemColor: Colors.red,
        onTap: (int index) {
          setState(() {
            _tabController!.animateTo(index);
          });
        },
      ),
    );
  }
}