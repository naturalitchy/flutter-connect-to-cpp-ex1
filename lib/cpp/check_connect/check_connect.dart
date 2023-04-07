import 'dart:ffi'; // For FFI
import 'dart:io'; // For Platform.isX

final DynamicLibrary nativeAddLib = Platform.isAndroid
    ? DynamicLibrary.open("libnative_add.so")
    : DynamicLibrary.process();

final int Function() checkConnectDart =
  nativeAddLib
  .lookup<NativeFunction<Int32 Function()>>("native_add")
  .asFunction();

