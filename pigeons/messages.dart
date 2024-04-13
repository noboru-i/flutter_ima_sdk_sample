import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(PigeonOptions(
  dartOut: 'lib/gen/messages.g.dart',
  dartOptions: DartOptions(),
  kotlinOut:
      'android/src/main/kotlin/com/example/flutter_ima_sdk_sample/Messages.g.kt',
  kotlinOptions: KotlinOptions(),
  swiftOut: 'ios/Classes/Messages.g.swift',
  swiftOptions: SwiftOptions(),
))
class InitializeParam {
  InitializeParam(
    this.dummy,
  );

  String dummy;
}

class InitializeResult {
  InitializeResult(
    this.dummy,
  );

  String dummy;
}

@HostApi()
abstract class IMAPlayerApi {
  InitializeResult initialize(InitializeParam param);
}
