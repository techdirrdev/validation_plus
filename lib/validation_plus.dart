import 'validation_plus_platform_interface.dart';

class ValidationPlus {
  Future<String?> getPlatformVersion() {
    return ValidationPlusPlatform.instance.getPlatformVersion();
  }
}
