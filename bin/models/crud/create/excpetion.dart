import 'dart:io';

import '../../data_base/data_base_contact.dart';

List<String> listName = ['name'];
List<String> listPhoneNumber = ['phoneNumber', 'tel'];
class Exception {
  static void exception({required List list}) {
    String name = '';
    String phoneNumber = '';
    bool bl = true;
    for (int i = 0; i < list.length; i++) {
      if (listName.contains(list[i])) {
        name = list[i + 1];
      }
      if (listPhoneNumber.contains(list[i])) {
        phoneNumber = list[i + 1];
      }
    }
    while (bl) {
      try {
        dataBaseOfContact.add(DataBaseOfContact(name: name, phoneNumber: phoneNumber));
        bl = false;
      } catch (e) {
        if (e == 'name') {
          stdout.write('enter name again: ');
          name = stdin.readLineSync()!;
        }
        if (e == 'tel') {
          stdout.write('enter phone number again: ');
          phoneNumber = stdin.readLineSync()!;
        }
      }
    }
  }
}