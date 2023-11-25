import 'package:connectivity/connectivity.dart';
import 'dart:async';

class ConnectivityService {
  final Connectivity _connectivity = Connectivity();
  StreamController<ConnectivityResult> connectivityController =
      StreamController<ConnectivityResult>();

  ConnectivityService() {
    _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      connectivityController.add(result);
    });
  }

  // Get the current connectivity status
  Future<ConnectivityResult> getCurrentConnectivity() async {
    return await _connectivity.checkConnectivity();
  }

  // Dispose stream controller to prevent memory leaks
  void disposeStream() {
    connectivityController.close();
  }
}
