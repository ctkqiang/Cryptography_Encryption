package Java.Base64Encryption;

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