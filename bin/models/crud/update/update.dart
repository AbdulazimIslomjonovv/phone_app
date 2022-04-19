import '../../data_base/data_base_contact.dart';

class Update {
  static void changing({required String oldName, String? newName, String? newTel}) {
    dataBaseOfContact.forEach((element) {
      if (element.nname == oldName) {
        if (newName != null && newTel != null) {
          element.nname = newName;
          element.pphoneNumber = newTel;
        } else if (newName != null && newTel == null) {
          element.nname = newName;
        } else if (newName == null && newTel != null) {
          element.pphoneNumber = newTel;
        }
      }
    });
  }
}