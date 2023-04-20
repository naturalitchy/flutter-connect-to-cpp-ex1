
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  final double pitch;
  final double roll;
  final double yaw;
  final ValueChanged<double> onPitchChanged;
  final ValueChanged<double> onRollChanged;
  final ValueChanged<double> onYawChanged;

  const SettingScreen({
    required this.pitch,
    required this.roll,
    required this.yaw,
    required this.onPitchChanged,
    required this.onRollChanged,
    required this.onYawChanged,
    Key? key
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Pitch'),
              ),
              SizedBox(width: 10.0,),
              Expanded(
                child: Slider(
                  value: pitch,
                  onChanged: onPitchChanged,
                  min: 0,
                  max: 60,
                  divisions: 61,
                  label: pitch.toStringAsFixed(1),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Roll'),
              ),
              SizedBox(width: 10.0,),
              Expanded(
                child: Slider(
                  value: roll,
                  onChanged: onRollChanged,
                  min: 0,
                  max: 60,
                  divisions: 61,
                  label: roll.toStringAsFixed(1),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Yaw'),
              ),
              SizedBox(width: 10.0,),
              Expanded(
                child: Slider(
                  value: yaw,
                  onChanged: onYawChanged,
                  min: 0,
                  max: 60,
                  divisions: 61,
                  label: yaw.toStringAsFixed(1),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50,),

          Text('value = ${pitch}'),

        ],
      ),
    );
  }


  Widget setSliders() {
    return Row();
  }

}