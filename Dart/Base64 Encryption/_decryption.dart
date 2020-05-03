import 'dart:io' as IO;
import 'dart:convert';

void main() {
  __onStart onStart = new __onStart();
  onStart._requestUserInput();
}

class __decryption {
  void __decryption_String() {
    print("Please Enter {str} you want to decrypt:  ");
    String _requestUserStringInput = IO.stdin.readLineSync();
    String _decodedString = utf8.decode(base64Decode(_requestUserStringInput));
    print("Encoded: $_requestUserStringInput");
    print("Decoded: $_decodedString");
  }

  Future<void> __decryption_Binary() async {
    // To be Reviewed:
    var _decodedBytes;
    var _file;
    print("Please Enter {content} you want to decrypt:  ");
    String _requestUserFileInput = IO.stdin.readLineSync();
    List _binary = await new IO.File(_requestUserFileInput).readAsBytesSync();
    String _encodedFile = base64.encode(_binary);
    _decodedBytes = base64Decode(_encodedFile);
    print("Decoded Binary:  $_encodedFile");
    _file = IO.File("output.png");
    _file.writeAsBytesSync(_decodedBytes);
  }
}

class __onStart {
  int _exitRequest = 99;
  void _requestUserInput() {
    String _requestUserInput;
    // Request $user_input either a "string" or "binary_file"
    print("Decrypt {string} or {file}? [input: \"str\" || \"bin\", type \"exit()\" for quit the programme]");
    _requestUserInput = IO.stdin.readLineSync();

    if (_requestUserInput == "str") {
      __decryption _decryption = new __decryption();
      _decryption.__decryption_String();
    } else if (_requestUserInput == "bin") {
      __decryption _decryption = new __decryption();
      _decryption.__decryption_Binary();
    } else if (_requestUserInput == "exit()"){
      IO.exit(_exitRequest);
    } else {
      print("Please give a valid [Input]");
    }
  }
}