import 'dart:io';
import 'models/read_txt/read_txt.dart';
///30-
///-30
void main() {
  try{
    String txt = '';
    while (txt.toLowerCase().replaceAll(' ', '') != 'finish') {
      stdout.write('enter text: ');
      txt = stdin.readLineSync()!;
      ReadTxt.read_txt(txt: txt);
    }
  } catch (e) {}
}