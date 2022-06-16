import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:validation_plus/validation_plus_method_channel.dart';

void main() {
  MethodChannelValidationPlus platform = MethodChannelValidationPlus();
  const MethodChannel channel = MethodChannel('validation_plus');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
