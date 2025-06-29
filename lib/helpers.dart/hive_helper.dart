import 'package:hive_flutter/adapters.dart';

class HiveHelper {
  static Future<void> initAndSeedHive()async {
  await Hive.initFlutter();
  await Hive.openBox('firstTimeData');
  }

  static editHive(MapEntry<String,dynamic> data){
    var box = Hive.box('firstTimeData');
       box.put(data.key, data.value);
  }
}