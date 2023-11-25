import 'package:flutter/material.dart';
import 'package:battery/battery.dart';
import 'package:connectivity/connectivity.dart';

class StatusBarWidget extends StatefulWidget {
  @override
  _StatusBarWidgetState createState() => _StatusBarWidgetState();
}

class _StatusBarWidgetState extends State<StatusBarWidget> {
  final Battery _battery = Battery();
  final Connectivity _connectivity = Connectivity();

  String _batteryLevel = 'Unknown';
  String _connectionStatus = 'Unknown';

  @override
  void initState() {
    super.initState();
    _battery.batteryLevel.then((level) {
      setState(() {
        _batteryLevel = '$level%';
      });
    });
    _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      setState(() {
        _connectionStatus = result.toString().split('.').last;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Battery: $_batteryLevel', style: TextStyle(color: Colors.white)),
          Text('Network: $_connectionStatus', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
