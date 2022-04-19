import '../calling/crud/read_calling.dart';
import '../calling/crud/read_txt_call.dart';
import '../crud/create/create.dart';
import '../crud/read/read.dart';
import '../recent_calling/recent_calling.dart';

List<String> add = ['add', 'create'];
List<String> addAll = ['addAll'];
List<String> readCall = ['readCall'];
List<String> read = ['read'];
List<String> call = ['call'];
List<String> recent = ['recent'];
class ReadTxt {
  static void read_txt({required String txt}) {
    List<String> listTxt = List.from(txt.split(' '));
    for (int i = 0; i < add.length; i++) {
      if (listTxt.contains(add[i])) {
        Create.create(txt: txt);
        break;
      }
    }
    for (int i = 0; i < read.length; i++) {
      if (listTxt.contains(read[i])) {
        Read.read();
        break;
      }
    }
    for (int i = 0; i < call.length; i++) {
      if (listTxt.contains(call[i])) {
        ReadTxtCall.readTxtCall(txt: txt);
        break;
      }
    }
    for (int i = 0; i < readCall.length; i++) {
      if (listTxt.contains(readCall[i])) {
        ReadCalling.read_calling();
        break;
      }
    }
    for (int i = 0; i < recent.length; i++) {
      if (listTxt.contains(recent[i])) {
        RecentCalling.recentCalling();
      }
    }
  }
}