import 'dart:io';
import 'models/read_txt/read_txt.dart';

void main() {
  try{
    String txt = '';
    while (txt.toLowerCase().replaceAll(' ', '') != 'finish') {
      stdout.write('enter txt: ');
      txt = stdin.readLineSync()!;
      ReadTxt.read_txt(txt: txt);
    }
  } catch (e) {}
}