import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdDisplayWidget extends StatelessWidget {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Assuming ad data contains a 'text' field for simplicity
  Stream<DocumentSnapshot> getAdStream() {
    // Stream from a specific ad document in Firestore
    return firestore.collection('ads').doc('your_ad_id').snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
      stream: getAdStream(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var adData = snapshot.data.data();
          return Center(
            child: Text(adData['text'], // Use 'text' field from ad data
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          );
        } else if (snapshot.hasError) {
          return Text("Error loading ad");
        }
        return CircularProgressIndicator();
      },
    );
  }
}
