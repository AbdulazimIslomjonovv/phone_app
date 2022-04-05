import 'dart:io';

import '../../data_base/data_base_contact.dart';
import '../../toliq_suhbatlar/toliq_subatlar.dart';

class Read {
  static void read() {
    int t = 0;
    String str = '';
    String str1 = '';
    for (DataBaseOfContact list in dataBaseOfContact) {
      t++;
      print('-------${t}-------');
      print(list);
      print('------------------\n');
    }
    stdout.write('=> ');
    str = stdin.readLineSync()!;
    if (int.tryParse(str) is int) {
      print(dataBaseOfContact[int.parse(str) - 1]);
      stdout.write('=> ');
      str1 = stdin.readLineSync()!;
      if (str1.toLowerCase().replaceAll(' ', '') == 'history') {
        ToliqSuhbatlar.toliq_suhbatlar(
            tel: dataBaseOfContact[int.parse(str) - 1].pphoneNumber);
      }
    }
  }
}
