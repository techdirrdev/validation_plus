import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'validation_plus_platform_interface.dart';

/// An implementation of [ValidationPlusPlatform] that uses method channels.
class MethodChannelValidationPlus extends ValidationPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('validation_plus');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
