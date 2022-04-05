class ParseTxt {
  static List<String> parse_txt({required String txt}) {
    String newTxt = '';
    bool bl = false;
    for (int i = 0; i < txt.length; i++) {
      if (txt[i] == ']') bl = false;
      if (bl) newTxt += txt[i];
      if (txt[i] == '[') bl = true;
    }
    return List.from(newTxt.split(' '));
  }
}