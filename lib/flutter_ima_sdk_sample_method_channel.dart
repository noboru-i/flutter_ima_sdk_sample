import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_ima_sdk_sample_platform_interface.dart';

/// An implementation of [FlutterImaSdkSamplePlatform] that uses method channels.
class MethodChannelFlutterImaSdkSample extends FlutterImaSdkSamplePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_ima_sdk_sample');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
