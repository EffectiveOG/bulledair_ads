import 'package:flutter/material.dart';

// App-wide color scheme
class AppColors {
  static const primaryColor = Colors.blue;
  static const accentColor = Colors.amber;
  static const backgroundColor = Colors.white;
}

// Text Styles
class AppTextStyles {
  static const headline = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static const body = TextStyle(fontSize: 14, fontWeight: FontWeight.normal);
}

// API Endpoints (if any)
class ApiEndpoints {
  static const baseUrl = 'https://api.yourapp.com/';
  static const adsEndpoint = baseUrl + 'ads/';
  // Add other endpoints as needed
}

// Firebase Collection Names
class FirebaseCollections {
  static const ads = 'ads';
  // Add other collection names as needed
}

// Other constants
class Constants {
  static const appTitle = 'Ad Display App';
  // Add other constants as needed
}
