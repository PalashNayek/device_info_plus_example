import 'package:device_info_plus/device_info_plus.dart';

class DeviceInfoService {
  final DeviceInfoPlugin _deviceInfoPlugin = DeviceInfoPlugin();

  Future<Map<String, dynamic>> getDeviceInfo() async {
    final deviceInfo = await _deviceInfoPlugin.deviceInfo;
    return deviceInfo.data;
  }
}
