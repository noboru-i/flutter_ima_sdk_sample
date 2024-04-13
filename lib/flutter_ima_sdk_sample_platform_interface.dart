import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_ima_sdk_sample_method_channel.dart';

abstract class FlutterImaSdkSamplePlatform extends PlatformInterface {
  /// Constructs a FlutterImaSdkSamplePlatform.
  FlutterImaSdkSamplePlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterImaSdkSamplePlatform _instance = MethodChannelFlutterImaSdkSample();

  /// The default instance of [FlutterImaSdkSamplePlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterImaSdkSample].
  static FlutterImaSdkSamplePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterImaSdkSamplePlatform] when
  /// they register themselves.
  static set instance(FlutterImaSdkSamplePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
