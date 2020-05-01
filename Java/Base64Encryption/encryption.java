package Java.Base64Encryption;

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