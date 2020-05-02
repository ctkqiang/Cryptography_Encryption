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

public class encryption {
      public static void main(final String[] args) {
            final Scanner userInput = new Scanner(System.in);
            final String _originalText, _encodedString;
            System.out.println("Enter The Data For { Encryption }: ");
            _originalText = userInput.nextLine();
            _encodedString = Base64.getEncoder().encodeToString(_originalText.getBytes());
            System.out.println("Encoded Data: " + _encodedString);
      }
}