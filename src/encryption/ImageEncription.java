import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Scanner;

public class ImageEncryption {
	
		
	ImageEncryption(){
         Scanner scanner = new Scanner(System.in);
			
	}

   private void askQuestion(image_path){
        while (true){
            System.out.println("*************************************************");
            System.out.println("What do you want to do with image?");
            System.out.println("(E)ncrypt, (D)ecrypt, (Q)uit");

            char response = Character.toUpperCase(scanner.nextLine().charAt(0));

            switch (response){
              
                case 'E':
                    encrypt(image_path);
                    break;
                case 'D':
                    //  decription function call goes here
                    decrypt(image_path);
                case 'Q':
                    quit();
                    break;
                default:
                    System.out.println("Not a valid answer");
            }
        }
    }

    public void encript(image_path){
       
		System.out.println("Note : Encryption Key act as Password to
		Decrypt the same Image,otherwise it will corrupt the Image.");
	
		// Here key is act as password to Encrypt Image
		// instantiate EncriptionProgram class
        EncryptionProgram ep = new EncryptionProgram();

        
							
		// Selecting a Image for operation
		FileInputStream fis = new FileInputStream(image_path);
							
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

        // Opening a file for writing purpose
        FileOutputStream fos = new FileOutputStream(image_path);
                             
        // Writing new byte array value to image which
        // will Encrypt it.
                             
        fos.write(data);
                             
        // Closing file
        fos.close();
        fis.close();
        System.out.println("Encyption Done...");

    }
    public void decrypt(){
        
		// Here key is act as password to Encrypt Image
		// instantiate EncriptionProgram class
        
        
							
		// Selecting a Image for operation
		FileInputStream fis = new FileInputStream(image_path);
							
		// Converting Image into byte array, create a
		// array of same size as Image size
							
		byte data[] = new byte[fis.available()];

        fis.read(data);
        int i = 0;
                             
        // looping through each byte and decrypting using EncriptionProgram.java script
        for (byte b : data) {
            data[i] = ep.derypt(b)
            i++;
        }

        // Opening a file for writing purpose
        FileOutputStream fos = new FileOutputStream(image_path);
                             
        // Writing new byte array value to image which
        // will Encrypt it.
                             
        fos.write(data);
                             
        // Closing file
        fos.close();
        fis.close();
        System.out.println("Decryption Done...");

    }
}
