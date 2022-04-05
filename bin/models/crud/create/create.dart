import '../../read_txt/parse_txt.dart';
import 'excpetion.dart';

class Create {
  static void create({required String txt}) {
    List list = ParseTxt.parse_txt(txt: txt);
    Exception.exception(list: list);
  }
}