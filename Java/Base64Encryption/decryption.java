package Java.Base64Encryption;
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
 *
 */
import java.util.Base64;
import java.util.Scanner;

public class decryption {
      public static void main(final String[] args) {
            final Scanner userInput = new Scanner(System.in);
            final String _originalText, _finalDecryptedString;
            final byte[] _dencodedString;

            System.out.println("Enter The Data For { Decryption }: ");
            _originalText = userInput.nextLine();
            _dencodedString = Base64.getDecoder().decode(_originalText.getBytes());
            _finalDecryptedString = new String(_dencodedString);
            System.out.println("Decoded Data: " + _finalDecryptedString);
      }
}