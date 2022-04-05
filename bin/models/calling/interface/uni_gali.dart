import 'dart:io';

class UningGali {
  static String uningGali() {
    String str = '';
    while (!(str.endsWith('.'))) {
      stdout.write('                                                          => ');
      str = str + ' ' + stdin.readLineSync()!;
    }
    return str;
  }
}