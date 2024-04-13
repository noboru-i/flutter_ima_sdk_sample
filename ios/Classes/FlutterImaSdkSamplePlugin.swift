import Flutter
import UIKit

public class FlutterImaSdkSamplePlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        IMAPlayerApiSetup.setUp(binaryMessenger: registrar.messenger(), api: IMAPlayerApiImpl())
    }
}

private class IMAPlayerApiImpl: IMAPlayerApi {
    func initialize(param: InitializeParam) throws -> InitializeResult {
        return InitializeResult(dummy: param.dummy + ", " + UIDevice.current.systemVersion)
    }
}
