import 'package:flutter/material.dart';

import 'src/app.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';

// import 'dart:convert';
// import ;'package:flutter/services.dart'


class StockData {
  final String name;
  // Add other relevant fields as needed based on your JSON structure

  StockData({required this.name});

  factory StockData.fromJson(Map<String, dynamic> json) {
    return StockData(
      name: json['name'] as String, // Adjust key names based on your JSON
    );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  // final String jsonString = await rootBundle.loadString('assets/data.json');
  // final jsonData = jsonDecode(jsonString) as List<dynamic>;
  // final stockData = jsonData.map((stockJson) => StockData.fromJson(stockJson)).toList();
  runApp(MyApp());
}
