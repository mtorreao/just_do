import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class LocalDBService extends Disposable {
  Completer<Box> completer = Completer<Box>();

  LocalDBService(String collectionName) {
    _initDB(collectionName);
  }

  Future<void> _initDB(String collectionName) async {
    if (kIsWeb) {
      Hive.init('just_do_hive');
    } else {
      final directory = await path_provider.getApplicationDocumentsDirectory();
      Hive.init(directory.path);
    }
    final box = await Hive.openBox(collectionName);
    if (!completer.isCompleted) completer.complete(box);
  }

  Future<Box> getBox() async => await completer.future;

  @override
  void dispose() {
    Hive.close();
  }
}
