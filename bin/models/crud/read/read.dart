import 'dart:io';

import '../../../visual_phone/visual_phone.dart';
import '../../data_base/data_base_contact.dart';
import '../../toliq_suhbatlar/toliq_subatlar.dart';
import '../delete/delete.dart';
import '../update/update.dart';

class Read {
  static void read() {
    // int t = 0;
    String str = '';
    String str1 = '';
    // for (DataBaseOfContact list in dataBaseOfContact) {
    //   t++;
    //   print('-------${t}-------');
    //   print(list);
    //   print('------------------\n');
    // }
    Visual_phone.visual_phone_func('read');
    stdout.write('=> ');
    str = stdin.readLineSync()!;
    if (int.tryParse(str) is int) {
      Visual_phone.ichkari (
          name: dataBaseOfContact[int.parse(str) - 1].nname,
          tel: dataBaseOfContact[int.parse(str) - 1].pphoneNumber);
      stdout.write('=> ');
      str1 = stdin.readLineSync()!;
      if (str1.toLowerCase().replaceAll(' ', '') == 'history') {
        ToliqSuhbatlar.toliq_suhbatlar(
            tel: dataBaseOfContact[int.parse(str) - 1].pphoneNumber);
      } else if (str1.toLowerCase().replaceAll(' ', '') == 'change') {
        String oldName = dataBaseOfContact[int.parse(str) - 1].nname;
        stdout.write('enter news: ');
        List<String> list1 = List.from(stdin.readLineSync()!.split(' '));
        String? newName;
        String? newTel;
        for (int i = 0; i < list1.length - 1; i++) {
          if (list1[i] == 'name') {
            newName = list1[i + 1];
          } else if (list1[i] == 'tel') {
            newTel = list1[i + 1];
          }
        }
        Update.changing(oldName: oldName, newName: newName, newTel: newTel);
      } else if (str1.toLowerCase().replaceAll(' ', '') == 'delete') {
        print(dataBaseOfContact);
        Delete.delete_func(name: dataBaseOfContact[int.parse(str) - 1].nname);
        print(dataBaseOfContact);
      }
    }
  }
}
