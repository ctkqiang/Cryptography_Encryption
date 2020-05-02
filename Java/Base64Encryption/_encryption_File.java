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
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Base64;

public class _encryption_File {
      public static void main(String[] args) {
            if (args.length != 1) {
                  String error;
                  error = "<usage>: java _encryption_File [filename.extension]";
                  System.err.println(error);
                  return;
            }

            try (FileInputStream _fileInputStream = new FileInputStream(args[0])) {
                  int _byte;

                  Base64.Encoder _encoderOne = Base64.getEncoder();
                  Base64.Encoder _encoderTwo = Base64.getMimeEncoder();
                  Base64.Encoder _encoderThree = Base64.getUrlEncoder();

                  OutputStream _outstreamOne = _encoderOne.wrap(new FileOutputStream(args[0] + "1._encoderOne"));
                  OutputStream _outstreamTwo = _encoderTwo.wrap(new FileOutputStream(args[0] + "2._encoderTwo"));
                  OutputStream _outstreamThree = _encoderThree.wrap(new FileOutputStream(args[0] + "3._encoderThree"));

                  while ((_byte = _fileInputStream.read()) != -1) {
                        _outstreamOne.write(_byte);
                        _outstreamTwo.write(_byte);
                        _outstreamThree.write(_byte);
                  }

                  _outstreamOne.close();
                  _outstreamTwo.close();
                  _outstreamThree.close();

            } catch (IOException exception) {
                  System.err.printf(exception.getMessage());
            }
      }
}