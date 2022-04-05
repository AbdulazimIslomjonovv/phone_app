import 'dart:io';

import '../../data_base/data_base_contact.dart';
import '../interface/interface.dart';

List<String> calling = ['call'];

String? name;
String phoneNumberAll = '';

class ReadTxtCall {
  static void readTxtCall({required String txt}) {
    String phoneNumber = '';
    List<String> list = List.from(txt.split(' '));
    for (int i = 0; i < list.length; i++) {
      for (int j = 0; j < calling.length; j++) {
        if (list[i] == calling[j]) {
          phoneNumber = list[i + 1];
          break;
        }
      }
    }
    bool bl = true;
    while (bl) {
      if (phoneNumber.startsWith('+') &&
          int.tryParse(phoneNumber.substring(1)) is int &&
          phoneNumber.isNotEmpty) {
        if (datamizdaBormidi(phoneNumber: phoneNumber) is String) {
          name = datamizdaBormidi(phoneNumber: phoneNumber);
          phoneNumberAll = phoneNumber;
        } else {
          name = null;
          phoneNumberAll = phoneNumber;
        }
        bl = false;
      } else {
        stdout.write('enter phone number: ');
        phoneNumber = stdin.readLineSync()!;
      }
    }
    Interface.interface(name: name, tel: phoneNumberAll);
  }
}

String? datamizdaBormidi({required String phoneNumber}) {
  for (DataBaseOfContact data in dataBaseOfContact) {
    if (data.pphoneNumber == phoneNumber) {
      return data.nname;
    }
  }
  return null;
}
