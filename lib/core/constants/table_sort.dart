int getNumber(String s) {
  return int.parse(s);
}

bool isDigit(String str) {
  if (str == null) {
    return false;
  }
  return double.tryParse(str) != null;
}

class StringWrapper {
  int pos = 0;
  int num = 0;
}

StringWrapper getLastNumberPos(String s, int pos) {
  StringWrapper wrapper = StringWrapper();
  String res = "";
  int i = pos;
  for (; i < s.length; ++i) {
    if (!isDigit(s[i])) break;
    res += s[i];
  }
  wrapper.pos = i;
  wrapper.num = getNumber(res);
  return wrapper;
}

int numberCompare(String a, String b) {
  int result = 0;
  int a_pos = 0;
  int b_pos = 0;

  do {
    if (isDigit(a[a_pos]) && isDigit(b[b_pos])) {
      StringWrapper a_wrapper = getLastNumberPos(a, a_pos);
      StringWrapper b_wrapper = getLastNumberPos(b, b_pos);
      result = a_wrapper.num - b_wrapper.num;
      a_pos = a_wrapper.pos;
      b_pos = b_wrapper.pos;
    } else {
      result = a.codeUnitAt(a_pos) - b.codeUnitAt(b_pos);
      ++a_pos;
      ++b_pos;
    }
  } while ((result == 0) && (a_pos < a.length || b_pos < b.length));
  return result.clamp(-1, 1);
}
