import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Scanner;

public class ImageEncryption {
	public static void main(String[] args)
		throws FileNotFoundException, IOException
	{
		Scanner sc = new Scanner(System.in);
		System.out.println("Note : Encryption Key act as Password to
		Decrypt the same Image,otherwise it will corrupt the Image.");
	
		// Here key is act as password to Encrypt and
		// Decrypt the Image
		// get encription key from EncriptionProgramming.java
        EncryptionProgram ep = new EncryptionProgram();
      
							
		// Selecting a Image for operation
		FileInputStream fis = new FileInputStream('Back_Marché.png');
							
		// Converting Image into byte array, create a
		// array of same size as Image size
							
		byte data[] = new byte[fis.available()];

        fis.read(data);
        int i = 0;
                             
        // looping through each byte and ecripting using EncriptionProgram.java script
        for (byte b : data) {
            data[i] = ep.encrypt(b)
            i++;
        }
							
		
	}
}
