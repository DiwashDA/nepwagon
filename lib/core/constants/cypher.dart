class Cypher {
  final String specialCharacterList = "!@#\$%&(){}[] +-*/'?.,;\"";

  int _getSpecialCharacterIndex(String c) {
    int specialCharacterCount = specialCharacterList.length;
    for (int i = 0; i < specialCharacterCount; i++) {
      if (c == specialCharacterList[i]) return i;
    }
    return -1;
  }

  encrypt(String givenMessage, int s) {
    String encryptedMessage = "";
    int messageLength = givenMessage.length;
    for (int i = 0; i < messageLength; i++) {
      String givenCharacter = givenMessage[i];
      String encryptedCharacter = "";

      if ('a'.codeUnitAt(0) <= givenCharacter.codeUnitAt(0) &&
          givenCharacter.codeUnitAt(0) <= 'z'.codeUnitAt(0)) {
        String ch = String.fromCharCode(
            (givenCharacter.codeUnitAt(0) + s - 97) % 26 + 97);
        encryptedCharacter += ch;
      } else if ('A'.codeUnitAt(0) <= givenCharacter.codeUnitAt(0) &&
          givenCharacter.codeUnitAt(0) <= 'Z'.codeUnitAt(0)) {
        String ch = String.fromCharCode(
            (givenCharacter.codeUnitAt(0) + s - 65) % 26 + 65);
        encryptedCharacter += ch;
      } else if (_isDigit(givenCharacter, 0)) {
        print("digit found");
        print(givenCharacter);
        encryptedCharacter = ((int.parse(givenCharacter) + s) % 9).toString();
      } else {
        int specialCharacterIndex = _getSpecialCharacterIndex(givenCharacter);
        if (specialCharacterIndex == -1) {
          print("Unidentified character found: $givenCharacter");
          encryptedCharacter = givenCharacter;
        } else {
          encryptedCharacter = specialCharacterList[
              (specialCharacterIndex + s) % specialCharacterList.length];
        }
      }
      encryptedMessage += encryptedCharacter;
    }
    givenMessage = encryptedMessage;

    print(givenMessage);
    return givenMessage;
  }

  bool _isDigit(String s, int idx) => (s.codeUnitAt(idx) ^ 0x30) <= 9;
}
