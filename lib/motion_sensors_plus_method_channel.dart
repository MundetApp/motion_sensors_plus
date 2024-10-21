import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'motion_sensors_plus_platform_interface.dart';

/// An implementation of [MotionSensorsPlusPlatform] that uses method channels.
class MethodChannelMotionSensorsPlus extends MotionSensorsPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('motion_sensors_plus');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
