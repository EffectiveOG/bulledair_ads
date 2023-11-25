import 'package:flutter/material.dart';
import '../models/ad.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdProvider with ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Ad _currentAd;

  Ad get currentAd => _currentAd;

  // Fetch the current ad from Firestore
  Future<void> fetchCurrentAd() async {
    try {
      var docSnapshot =
          await _firestore.collection('ads').doc('current_ad').get();
      if (docSnapshot.exists) {
        _currentAd = Ad.fromMap(docSnapshot.data(), docSnapshot.id);
        notifyListeners();
      }
    } catch (e) {
      print('Error fetching ad: $e');
      // Handle the error appropriately
    }
  }

  // You can add more methods here, for example, to update an ad,
  // delete an ad, etc., depending on your app's functionality
}
