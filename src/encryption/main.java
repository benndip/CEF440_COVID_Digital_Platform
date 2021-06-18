package encryption;
public class main {
    public static void main(String[] args) {

       
       askQuestion();

        private void askQuestion(){
        while (true){
            System.out.println("*************************************************");
            System.out.println("What type is the data you want to encript or decript?");
            System.out.println("(S)tring, (N)Number, (I)mage, (Q)uit");
            char response = Character.toUpperCase(scanner.nextLine().charAt(0));



            switch (response){
                case 'S':
                    EncryptionProgram ep = new EncryptionProgram();
                    // ask user to enter string 
                    System.out.println("Enter String");
                    String message = scanner.nextLine()
                    ep.askQuestion(message)
                    break;
                case 'N':
                    EncryptionProgram ep = new EncryptionProgram();
                    // ask user to enter string 
                    System.out.println("Enter Number");
                    String message = scanner.nextLine()
                    ep.askQuestion(message)
                    break;

                case 'I':
                    ImageEncryption ie = new ImageEncryption()
                    // ask user to enter string 
                    System.out.println("Enter Image Path");
                    String message = scanner.nextLine()
                    ie.encript(image_path)
                  
                    break;
                case 'Q':
                    quit();
                    break;
                default:
                    System.out.println("Not a valid answer");
            }
        }
    }
    }
}