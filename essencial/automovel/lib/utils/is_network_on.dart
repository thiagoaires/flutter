import 'package:connectivity/connectivity.dart';
import 'dart:async';

Future<bool> isNetworkOn() async {
  var connectivityResult = await (Connectivity().checkConnectivity());

  if (connectivityResult == ConnectivityResult.none)
    return false;
  else
    return true;
}
