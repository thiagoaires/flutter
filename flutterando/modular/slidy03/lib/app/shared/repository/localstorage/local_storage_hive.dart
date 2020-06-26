import 'dart:async';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:slidy03/app/shared/repository/localstorage/local_storage_interface.dart';

class LocalStorageHive implements ILocalStorage {
  Completer<Box> _instance = Completer<Box>();

  _init() async {
    var dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    var box = await Hive.openBox('db');
  }

  @override
  Future<List<String>> get(String key) async {
    var box = await _instance.future;
    return box.get(key);
  }

  @override
  Future put(String key, List<String> value) async {
    var box = await _instance.future;
    return box.put(key, value);
  }

  @override
  Future delete(String key) async {
    var box = await _instance.future;
    return box.get(key);
  }
}
