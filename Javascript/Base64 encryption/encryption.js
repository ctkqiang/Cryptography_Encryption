/**
 * Copyright 2020 © John Melody Melissa
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * @Author : John Melody Melissa
 * @Copyright: John Melody Melissa  © Copyright 2020
 * @INPIREDBYGF : Tan Sin Dee <3
 * THIS PROGRAM IS WRITTEN IN NODEJS
 */
'use strict';

const readline = require('readline').createInterface({
      input: process.stdin,
      output: process.stdout
});

var _user_input = process.stdin;
var encoder = new TextEncoder();
_user_input.setEncoding("utf-8");

readline.question("Mind Enter Text which you want to encrypt?", _originalText => {
      let _data = encoder.encode(_originalText);
      let _buffer = Buffer.from(_data);
      let _encryptedData = _buffer.toString("base64");

      console.log("The Encrypted Data: " + _encryptedData);

      readline.close();
})
