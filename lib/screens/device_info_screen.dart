import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/deviceInfo_view_model.dart';

class DeviceInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DeviceInfoViewModel()..loadDeviceInfo(),
      child: Scaffold(
        appBar: AppBar(title: Text('Device Info')),
        body: Consumer<DeviceInfoViewModel>(
          builder: (context, viewModel, _) {
            if (viewModel.deviceInfo == null) {
              return Center(child: CircularProgressIndicator());
            }

            return ListView(
              children: viewModel.deviceInfo!.entries.map((entry) {
                return ListTile(
                  title: Text(entry.key),
                  subtitle: Text('${entry.value}'),
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
