import 'package:encrypt/encrypt.dart';

class MyEncryptor {
  late final Key key;
  late final IV iv;
  late final Encrypter encrypter;

  MyEncryptor() {
    key = Key.fromUtf8('my32lengthsupersecretnooneknows1');
    iv = IV.fromLength(16);
    encrypter = Encrypter(AES(key, mode: AESMode.cbc, padding: 'PKCS7'));
  }

   String encryptText(String text) {
    final encrypted = encrypter.encrypt(text, iv: iv);
    return encrypted.base64;
  }

  String decryptText(String base64) {
    return encrypter.decrypt64(base64, iv: iv);
  }
}
