import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/ad.dart';

class FirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Fetch a single ad by ID
  Future<Ad> fetchAdById(String adId) async {
    try {
      var docSnapshot = await _firestore.collection('ads').doc(adId).get();
      if (docSnapshot.exists) {
        return Ad.fromMap(docSnapshot.data(), docSnapshot.id);
      } else {
        throw Exception('Ad not found');
      }
    } catch (e) {
      print('Error fetching ad: $e');
      rethrow;
    }
  }

  // Add more methods as needed for updating ads, deleting ads, etc.
}
