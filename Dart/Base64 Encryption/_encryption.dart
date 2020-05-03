import 'dart:io' as IO;
import 'dart:convert';

void main() {
  print("Encrypt {string} or {file}? [input: \"str\" || \"bin\"]");
  String _requestUserInput = IO.stdin.readLineSync();
  if (_requestUserInput == "str") {
    __encryption stringEncryption = new __encryption();
    stringEncryption._encryptionString();
  } else if (_requestUserInput == "bin") {
    __encryption binaryEncryption = new __encryption();
    binaryEncryption._encryptionBinary();
  } else {
    print("Please give a valid [Input]");
  }
}

class __encryption {
  void _encryptionString() {
    print("Please Enter {str} you want to encrypt:  ");
    String _requestUserStringInput = IO.stdin.readLineSync();
    List _encodedText = utf8.encode(_requestUserStringInput);
    String _base64EncryptedString = base64.encode(_encodedText);
    print("Original Text $_requestUserStringInput");
    print("Encrpted String = $_base64EncryptedString");
  }

  Future<void> _encryptionBinary() async {
    print("Please Enter {content} you want to encrypt:  ");
    String _requestUserFileInput = IO.stdin.readLineSync();
    List _binary = await new IO.File(_requestUserFileInput).readAsBytesSync();
    String _encodedFile = base64.encode(_binary);
    print("Encoded Binary:  $_encodedFile");
  }
}
