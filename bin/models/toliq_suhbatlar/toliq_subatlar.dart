import '../../visual_phone/visual_phone.dart';
import '../calling/dataBaseOfCalling.dart';

class ToliqSuhbatlar {
  static void toliq_suhbatlar({required String tel}) {
    List<DataBaseOfCalling> list = [];
    for (DataBaseOfCalling data in dataBaseOfCalling) {
      if (data.phoneNumber == tel) {
        list.add(data);
      }
    }
    for (int j = 0; j < list.length; j++) {
      print('name: ${list[j].name}');
      print('tel: ${list[j].phoneNumber}');
      print('time: ${list[j].suhbatBoshlanganVaqt}');
      print('gaplashilganVaqt: ${list[j].gaplashilganVaqt}');
      print('suhbat: ');
      Visual_phone.chatting_vs(list[j].suhbat);
      // for (int i = 0; i < list[j].suhbat.length; i++) {
      //   if (i.isEven) {
      //     print(list[j].suhbat[i]);
      //   } else {
      //     print('                  ' + list[j].suhbat[i]);
      //   }
      // }
      // print('\n----------------------------\n');
    }
  }
}
