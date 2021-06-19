package encryption;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Random;
import java.util.Scanner;

public class EncryptionProgram {

    private Scanner scanner;
    private Random random;
    private ArrayList<Character> list;
    private ArrayList<Character> shuffledList;
    private char character;
    private String line;
    private char[] letters;

    EncryptionProgram(){
        scanner = new Scanner(System.in);
        random = new Random();
        list = new ArrayList();
        shuffledList = new ArrayList();
        character = ' ';
        ask();
    }

    public void ask(){
        while (true){
            System.out.println("*************************************************");
            System.out.println("What do you want to do?");
            System.out.println("enter 'E' or 'e' to encrypt text or numbers");
            // System.out.println("enter 'I' or 'i' to encrypt image");
            System.out.println("enter 'Q' or 'q' to Quit");
            char response = Character.toUpperCase(scanner.nextLine().charAt(0));

            switch (response){
                case 'E':
                    char[] txt1 = encrypt("njume");
                    decrypy(txt1);
                    break;
                case 'Q':
                    quit();
                    break;
                default:
                    System.out.println("Not a valid answer");
            }
        }
    }

    public void newKey(){
        character = ' ';
        list.clear();
        shuffledList.clear();

        for(int i = 32; i < 127; i++){
            list.add(Character.valueOf(character));
            character ++;
        }
        shuffledList = new ArrayList(list);
        Collections.shuffle(shuffledList);
        System.out.println("new key has been generated");
    }
    public void getKey(){
        System.out.println("Key: ");
        for(Character x: list){
            System.out.print(x);
        }
        System.out.println();
        for(Character x: shuffledList){
            System.out.print(x);
        }
        
    }
    public char[] encrypt(String txt){
        newKey();
        letters = txt.toCharArray();
        for(int i = 0; i < letters.length; i++){
            for(int j = 0; j < list.size(); j++){
                if(letters[i] == list.get(j)){
                    letters[i] = shuffledList.get(j);
                    break;
                }
            }
        }System.out.println("Encrypted: ");
        for(char x: letters){
            System.out.print(x);
        }
        System.out.println();

        return letters;
    }
    public void decrypy(char[] txt){
        letters = txt;
        for(int i = 0; i < letters.length; i++){
            for(int j = 0; j < shuffledList.size(); j++){
                if(letters[i] == shuffledList.get(j)){
                    letters[i] = list.get(j);
                    break;
                }
            }
        }System.out.println("Decrypted: ");
        for(char x: letters){
            System.out.print(x);
        }
        System.out.println();

    }
    public void quit(){
        System.out.println("Exiting Program");
        System.exit(0);
    }



}