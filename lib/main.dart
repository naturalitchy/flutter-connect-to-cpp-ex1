import 'package:connect_flutter_to_cpp_ex3/screen/main_screen.dart';
import 'package:flutter/material.dart';

/**
 * 해당 프로젝트의 목적은 다음과 같다.
 * 1. flutter에서 C++ function, class를 사용한다.
 * 2. flutter -> C++, C++ -> flutter 의 양방향 데이터 흐름을 구현한다.
 *
 * 또한,
 * 1. flutter에서 하나의 connect cpp file(extern C)만 연결해 그 파일에서 하나의
 * 클래스를 컨트롤 한다.
 * 2. 첫번째로 flutter에서 하나의 버튼을 클릭했을 때 C++로 흐름이 넘어가고 해당 C++
 * 클래스에서 C++ 자체적으로 어떠한것을 판별 후 다시 flutter에게 넘겨준다.
 * flutter는 해당 판별 데이터를 C++으로부터 받아 결과를 팝업으로(또는 뭐 암거나) 알려준다.
 * 정상적인 판별 데이터를 받았다면 flutter는 어떠한 값을 C++에게 전달 할 의무가 생긴다.
 * 예로, 버튼의 텍스트값, 슬라이더의 값 등.
 */

void main() {
  runApp(
    MaterialApp(
      home: MainScreen(),
    ),
  );
}
