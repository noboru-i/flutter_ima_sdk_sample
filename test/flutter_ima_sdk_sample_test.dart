import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ima_sdk_sample/flutter_ima_sdk_sample.dart';
import 'package:flutter_ima_sdk_sample/flutter_ima_sdk_sample_platform_interface.dart';
import 'package:flutter_ima_sdk_sample/flutter_ima_sdk_sample_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterImaSdkSamplePlatform
    with MockPlatformInterfaceMixin
    implements FlutterImaSdkSamplePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterImaSdkSamplePlatform initialPlatform = FlutterImaSdkSamplePlatform.instance;

  test('$MethodChannelFlutterImaSdkSample is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterImaSdkSample>());
  });

  test('getPlatformVersion', () async {
    FlutterImaSdkSample flutterImaSdkSamplePlugin = FlutterImaSdkSample();
    MockFlutterImaSdkSamplePlatform fakePlatform = MockFlutterImaSdkSamplePlatform();
    FlutterImaSdkSamplePlatform.instance = fakePlatform;

    expect(await flutterImaSdkSamplePlugin.getPlatformVersion(), '42');
  });
}
