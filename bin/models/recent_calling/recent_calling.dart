import 'dart:io';

import '../calling/dataBaseOfCalling.dart';
import '../toliq_suhbatlar/toliq_subatlar.dart';

class RecentCalling {
  static void recentCalling() {
    int t = 0;
    String str = '';
    List<DataBaseOfCalling> data = List.from(dataBaseOfCalling.reversed);
    for (DataBaseOfCalling a in data) {
      t++;
      print('------${t}-----');
      print('name: ${a.name}');
      print('tel: ${a.phoneNumber}');
      print('time: ${a.suhbatBoshlanganVaqt}');
      print('------------\n');
    }
    stdout.write('=> ');
    str = stdin.readLineSync()!;
    if (int.tryParse(str) is int) {
      ToliqSuhbatlar.toliq_suhbatlar(tel: data[int.parse(str) - 1].phoneNumber);
    }
  }
}