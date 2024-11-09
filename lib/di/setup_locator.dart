import 'package:get_it/get_it.dart';

import '../services/deviceInfo_service.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<DeviceInfoService>(() => DeviceInfoService());
}
