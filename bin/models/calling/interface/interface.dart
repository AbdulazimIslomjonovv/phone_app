import '../crud/add.dart';
import 'meni_galim.dart';
import 'uni_gali.dart';

class Interface {
  static List<String> interface({String? name, required String tel}) {
    bool queue = true;
    List<String> list = [];
    String str = '';
    DateTime boshlanganVaqt = DateTime.now();
    DateTime start = DateTime.now();
    while (str.toLowerCase() != ' bopti.') {
      if (queue) {
        str = MeningGalim.meningGalim();
      } else if (!queue) {
        str = UningGali.uningGali();
      }
      list.add(str);
      queue = !queue;
    }
    DateTime tugadi = DateTime.now();
    int qanchaGaplashgani = tugadi.difference(start).inSeconds;
    Add.add(
      name: name,
      phoneNumber: tel,
      gaplashilganVaqt: qanchaGaplashgani,
      ketkazilganPul: 100,
      suhbatBoshlanganVaqt: boshlanganVaqt,
      suhbat: list,
    );
    return list;
  }
}
