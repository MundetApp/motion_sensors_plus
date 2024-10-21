import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:motion_sensors_plus/motion_sensors_plus_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelMotionSensorsPlus platform = MethodChannelMotionSensorsPlus();
  const MethodChannel channel = MethodChannel('motion_sensors_plus');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
