import 'dart:convert';
import 'dart:ffi'; // For FFI
import 'dart:io'; // For Platform.isX

final DynamicLibrary nativeAddLib = Platform.isAndroid
    ? DynamicLibrary.open("libnative_add.so")
    : DynamicLibrary.process();

final int Function(int x) sliderTest =
nativeAddLib
    .lookup<NativeFunction<Int32 Function(Int32)>>("sliderTestValue")
    .asFunction();


/*
typedef GetStringFunc = Pointer Function();
typedef GetString = Pointer Function();

final hello = nativeAddLib.
  lookupFunction<GetStringFunc, GetString>('native_add');
*/
