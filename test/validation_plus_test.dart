import 'package:flutter_test/flutter_test.dart';
import 'package:validation_plus/validation_plus.dart';
import 'package:validation_plus/validation_plus_platform_interface.dart';
import 'package:validation_plus/validation_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockValidationPlusPlatform
    with MockPlatformInterfaceMixin
    implements ValidationPlusPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ValidationPlusPlatform initialPlatform =
      ValidationPlusPlatform.instance;

  test('$MethodChannelValidationPlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelValidationPlus>());
  });

  test('getPlatformVersion', () async {
    ValidationPlus validationPlusPlugin = ValidationPlus();
    MockValidationPlusPlatform fakePlatform = MockValidationPlusPlatform();
    ValidationPlusPlatform.instance = fakePlatform;

    expect(await validationPlusPlugin.getPlatformVersion(), '42');
  });
}
