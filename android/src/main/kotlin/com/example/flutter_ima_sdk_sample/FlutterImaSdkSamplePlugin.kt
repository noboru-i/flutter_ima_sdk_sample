package com.example.flutter_ima_sdk_sample

import IMAPlayerApi
import InitializeParam
import InitializeResult

import io.flutter.embedding.engine.plugins.FlutterPlugin

class FlutterImaSdkSamplePlugin: FlutterPlugin, IMAPlayerApi {

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    IMAPlayerApi.setUp(flutterPluginBinding.binaryMessenger, this)
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    IMAPlayerApi.setUp(binding.binaryMessenger, null)
  }

  override fun initialize(param: InitializeParam): InitializeResult {
    val version = android.os.Build.VERSION.RELEASE
    return InitializeResult("${param.dummy}, $version")
  }
}
