
import 'flutter_ima_sdk_sample_platform_interface.dart';

class FlutterImaSdkSample {
  Future<String?> getPlatformVersion() {
    return FlutterImaSdkSamplePlatform.instance.getPlatformVersion();
  }
}
