import '../models/data_base/data_base_contact.dart';

class Visual_phone {
  static void visual_phone_func(String a) {
    if (a == 'read') {
      menu_vs_phone();
    }
  }
}



void menu_vs_phone() {
  List<String> aaa = [
    '░░░░░░░░░░░░░░░░░░░░░░░░░░░░░',
    '░███████████████████████████░',
    '░███████████████████████████░',
    '░███████████████████████████░',
    '░███████████████████████████░',
    '░███████████████████████████░',
    '░███████████████████████████░',
    '░███████████████████████████░',
    '░███████████████████████████░',
    '░███████████████████████████░',
    '░███████████████████████████░',
    '░███████████████████████████░',
    '░███████████████████████████░',
    '░███████████████████████████░',
    '░███████████████████████████░',
    '░███████████████████████████░',
    '░███████████████████████████░',
    '░░░░░░░░░░░░░░░░░░░░░░░░░░░░░',
  ];

  List<String> vs_phone = aaa;
  List<String> names = [];
  List<String> tels = [];
  dataBaseOfContact.forEach((element) {
      names.add(element.nname);
      tels.add(element.pphoneNumber);
  });
  int j = 0;
  int nameLength = 0;
  int telLength = 0;
  for (int i = 0; i < vs_phone.length; i++) {
    if (j < names.length && i >= 1 && i < vs_phone.length - 1){
      nameLength = names[j].length;
      telLength = tels[j].length;
      vs_phone[i] = (vs_phone[i].replaceRange(1, nameLength + telLength + 5, '${j + 1}. ${names[j]}:${tels[j]}'));
      print(vs_phone[i]);
      j++;
    } else {
      print(vs_phone[i]);
    }
  }
}