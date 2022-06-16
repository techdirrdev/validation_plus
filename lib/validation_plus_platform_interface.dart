import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'validation_plus_method_channel.dart';

abstract class ValidationPlusPlatform extends PlatformInterface {
  /// Constructs a ValidationPlusPlatform.
  ValidationPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static ValidationPlusPlatform _instance = MethodChannelValidationPlus();

  /// The default instance of [ValidationPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelValidationPlus].
  static ValidationPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ValidationPlusPlatform] when
  /// they register themselves.
  static set instance(ValidationPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
