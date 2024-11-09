import 'package:flutter/material.dart';

import '../di/setup_locator.dart';
import '../services/deviceInfo_service.dart';

class DeviceInfoViewModel extends ChangeNotifier {
  final DeviceInfoService _deviceInfoService = getIt<DeviceInfoService>();
  Map<String, dynamic>? _deviceInfo;

  Map<String, dynamic>? get deviceInfo => _deviceInfo;

  Future<void> loadDeviceInfo() async {
    _deviceInfo = await _deviceInfoService.getDeviceInfo();
    notifyListeners();
  }
}
