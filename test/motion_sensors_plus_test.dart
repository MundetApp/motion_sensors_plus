import 'package:flutter_test/flutter_test.dart';
import 'package:motion_sensors_plus/motion_sensors_plus.dart';
import 'package:motion_sensors_plus/motion_sensors_plus_platform_interface.dart';
import 'package:motion_sensors_plus/motion_sensors_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMotionSensorsPlusPlatform
    with MockPlatformInterfaceMixin
    implements MotionSensorsPlusPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MotionSensorsPlusPlatform initialPlatform = MotionSensorsPlusPlatform.instance;

  test('$MethodChannelMotionSensorsPlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMotionSensorsPlus>());
  });

  test('getPlatformVersion', () async {
    MotionSensorsPlus motionSensorsPlusPlugin = MotionSensorsPlus();
    MockMotionSensorsPlusPlatform fakePlatform = MockMotionSensorsPlusPlatform();
    MotionSensorsPlusPlatform.instance = fakePlatform;

    expect(await motionSensorsPlusPlugin.getPlatformVersion(), '42');
  });
}
