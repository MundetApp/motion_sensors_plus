import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'motion_sensors_plus_method_channel.dart';

abstract class MotionSensorsPlusPlatform extends PlatformInterface {
  /// Constructs a MotionSensorsPlusPlatform.
  MotionSensorsPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static MotionSensorsPlusPlatform _instance = MethodChannelMotionSensorsPlus();

  /// The default instance of [MotionSensorsPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelMotionSensorsPlus].
  static MotionSensorsPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MotionSensorsPlusPlatform] when
  /// they register themselves.
  static set instance(MotionSensorsPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
