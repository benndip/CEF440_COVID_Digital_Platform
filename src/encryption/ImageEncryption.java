package encryption;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Random;
import java.util.Scanner;

public class ImageEncryption {
    Scanner scanner = new Scanner(System.in);
    
		
	ImageEncryption(){
         String user_working_directory = System.getProperty("user.id");
         String imagePath = user_working_directory + "/Back_Marché.png";
         askQuestion(imagePath);
			
	}

   private void askQuestion(String image_path){
        while (true){
            System.out.println("*************************************************");
            System.out.println("What do you want to do with image?");
            System.out.println("(E)ncrypt, (D)ecrypt, (Q)uit");

            char response = Character.toUpperCase(scanner.nextLine().charAt(0));

            switch (response){
              
                case 'E':
                    encript(image_path);
                    break;
                case 'D':
                    //  decription function call goes here
                    decrypt(image_path);
                case 'Q':
                   
                    break;
                default:
                    System.out.println("Not a valid answer");
            }
        }
    }

    public void encript(String image_path){
       
		System.out.println("Note : Encryption Key act as Password to Decrypt the same Image,otherwise it will corrupt the Image.");
	
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
       
       
        Random rand = new Random();
        int ub = 500;
        int key = rand.nextInt(ub);      
        // looping through each byte and ecripting using EncriptionProgram.java script
        for (byte b : data) {
            data[i] = (byte)(b ^ key);
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
    public void decrypt(String image_path){
        
		// Here key is act as password to Encrypt Image
		// instantiate EncriptionProgram class
        
        
							
		// Selecting a Image for operation
		FileInputStream fis = new FileInputStream(image_path);
							
		// Converting Image into byte array, create a
		// array of same size as Image size
							
		byte data[] = new byte[fis.available()];

        fis.read(data);
        int i = 0;
     
        int key =123;         
        // looping through each byte and decrypting using EncriptionProgram.java script
        for (byte b : data) {
            data[i] = (byte)(b ^ key );
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
