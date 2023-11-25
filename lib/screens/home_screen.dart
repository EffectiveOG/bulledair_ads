import 'package:flutter/material.dart';
import '../widgets/ad_display_widget.dart';
import '../widgets/status_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ad Display Screen'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: AdDisplayWidget(), // Widget to display the ad
          ),
          StatusBarWidget(), // Widget to display the status bar
        ],
      ),
    );
  }
}
