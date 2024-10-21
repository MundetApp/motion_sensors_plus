import 'motion_sensors_plus_platform_interface.dart';

class MotionSensorsPlus {
  Future<String?> getPlatformVersion() {
    return MotionSensorsPlusPlatform.instance.getPlatformVersion();
  }
}