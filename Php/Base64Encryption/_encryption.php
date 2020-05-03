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
 */

echo "Please enter {string} you want to encode: \n";
$_input = rtrim(fgets(STDIN));
$_encodedString = base64_encode($_input);
echo "Original String: ".$_input."\n";
echo "Encoded String: ".$_encodedString;

?>