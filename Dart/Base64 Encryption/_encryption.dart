/**
 *    Copyright 2020 © John Melody Melissa
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * @Author : John Melody Melissa
 * @Copyright: John Melody Melissa  © Copyright 2020
 * @INPIREDBYGF : Tan Sin Dee <3
 *
 */
import 'dart:io' as IO;
import 'dart:convert';

void main() {
  __onStart onStart = new __onStart();
  onStart.__requestUser();
}

class __encryption {
  void _encryptionString() {
    print("Please Enter {str} you want to encrypt:  ");
    String _requestUserStringInput = IO.stdin.readLineSync();
    // get $userInput(utf-8) and encode:
    List _encodedText = utf8.encode(_requestUserStringInput);
    // get $encodedString from $userinput for encryption:
    String _base64EncryptedString = base64.encode(_encodedText);
    print("Original Text: $_requestUserStringInput");
    print("Encrpted String: $_base64EncryptedString");
  }

  Future<void> _encryptionBinary() async {
    int x = 0;
    int y = 100;
    print("Please Enter {content} you want to encrypt:  ");
    String _requestUserFileInput = IO.stdin.readLineSync();
    List _binary = await new IO.File(_requestUserFileInput).readAsBytesSync();
    String _encodedFile = base64.encode(_binary);
    print("Encoded Binary:  $_encodedFile".substring(x, y));
  }
}

class __onStart {
  int _exitRequest = 99;
  void __requestUser() {
    String _requestUserInput;
    // Request $user_input either a "string" or "binary_file"
    print("Encrypt {string} or {file}? [input: \"str\" || \"bin\", type \"exit()\" for quit the programme]");
    _requestUserInput = IO.stdin.readLineSync();

    if (_requestUserInput == "str") {
      __encryption stringEncryption = new __encryption();
      stringEncryption._encryptionString();
    } else if (_requestUserInput == "bin") {
      __encryption binaryEncryption = new __encryption();
      binaryEncryption._encryptionBinary();
    } else if (_requestUserInput == "exit()") {
      IO.exit(_exitRequest);
    } else {
      print("Please give a valid [Input]");
    }
  }
}