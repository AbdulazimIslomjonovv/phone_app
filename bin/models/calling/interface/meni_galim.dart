import 'dart:io';

class MeningGalim {
  static String meningGalim() {
    String str = '';
    while (!(str.endsWith('.'))) {
      stdout.write('=> ');
      str = str + ' ' + stdin.readLineSync()!;
    }
    return str;
  }
}