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

class __onStart {
  void __requestUser() {
    String _requestUserInput;
    // Request $user_input either a "string" or "binary_file"
    print("Encrypt {string} or {file}? [input: \"str\" || \"bin\"]");
    _requestUserInput = IO.stdin.readLineSync();
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
}

class __encryption {
  void _encryptionString() {
    print("Please Enter {str} you want to encrypt:  ");
    String _requestUserStringInput = IO.stdin.readLineSync();
    List _encodedText = utf8.encode(_requestUserStringInput);
    String _base64EncryptedString = base64.encode(_encodedText);
    print("Original Text: $_requestUserStringInput");
    print("Encrpted String: $_base64EncryptedString");
  }

  Future<void> _encryptionBinary() async {
    print("Please Enter {content} you want to encrypt:  ");
    String _requestUserFileInput = IO.stdin.readLineSync();
    List _binary = await new IO.File(_requestUserFileInput).readAsBytesSync();
    String _encodedFile = base64.encode(_binary);
    print("Encoded Binary:  $_encodedFile");
  }
}
