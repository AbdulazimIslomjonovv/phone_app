import '../dataBaseOfCalling.dart';

class Add {
  static void add({
    String? name,
    required String phoneNumber,
    required int gaplashilganVaqt,
    required int ketkazilganPul,
    required DateTime suhbatBoshlanganVaqt,
    required List<String> suhbat,
  }) {
    dataBaseOfCalling.add(DataBaseOfCalling(name, phoneNumber, gaplashilganVaqt, ketkazilganPul,
        suhbatBoshlanganVaqt, suhbat));
  }
}
