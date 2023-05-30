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
  int aPos = 0;
  int bPos = 0;

  do {
    if (isDigit(a[aPos]) && isDigit(b[bPos])) {
      StringWrapper aWrapper = getLastNumberPos(a, aPos);
      StringWrapper bWrapper = getLastNumberPos(b, bPos);
      result = aWrapper.num - bWrapper.num;
      aPos = aWrapper.pos;
      bPos = bWrapper.pos;
    } else {
      result = a.codeUnitAt(aPos) - b.codeUnitAt(bPos);
      ++aPos;
      ++bPos;
    }
  } while ((result == 0) && (aPos < a.length || bPos < b.length));
  return result.clamp(-1, 1);
}
