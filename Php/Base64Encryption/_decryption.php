<?php
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

echo "Decrypt {string} or {file}? [input: \"str\" || \"bin\", type \"exit()\" for quit the programme]";
$__userInputOption = rtrim(fgets(STDIN));
if ($__userInputOption == "str"){
      echo "Please enter {string} you want to decode: \n";
      $_input = rtrim(fgets(STDIN));
      $_encodedString = base64_decode($_input);
      echo "Encoded String: ".$_input."\n";
      echo "Decoded String: ".$_encodedString;
} else if ($__userInputOption == "exit()") {
      exit();
} else if ($__userInputOption == "bin") {
      echo "Please enter {binary} you want to decode: \n";
      $__userInputBinary = rtrim(fgets(STDIN));
      $__post_decryption = file_get_contents($__userInputBinary);
      $__decryptedData = base64_decode($__post_decryption);
      // echo "Original binary".$__userInputBinary;
      echo "Decrypted binary hashes: ".$__decryptedData;
} else {
      printf("Please enter a valid input");
}

?>