import '../dataBaseOfCalling.dart';

class ReadCalling {
  static void read_calling() {
    for (DataBaseOfCalling data in dataBaseOfCalling) {
      print(data);
      readCalling(suhbat: data.suhbat);
    }
  }
}
void readCalling({required List<String> suhbat}) {
  for (int i = 0; i < suhbat.length; i++) {
    if (i.isEven) {
      print(suhbat[i]);
    } else {
      print('                  ' + suhbat[i]);
    }
  }
  print('\n\n');
}