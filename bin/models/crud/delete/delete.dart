import '../../data_base/data_base_contact.dart';

class Delete {
  static void delete_func({required String name}) {
    for (int i = 0; i < dataBaseOfContact.length; i++) {
      if (dataBaseOfContact[i].nname == name) {
        dataBaseOfContact.remove(dataBaseOfContact[i]);
        return ;
      }
    }
  }
}




























