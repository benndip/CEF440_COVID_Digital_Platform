package authentication;

public class User {
	private int id;
    private String beneficiary_name;
    private String beneficiary_tel;
    private String pin;
 
//Getters
    public String getBeneficiary_name() {
	return beneficiary_name;	
}
  //Setters
    public void setBeneficiary_name(String newBeneficiary) {
     	this.beneficiary_name = newBeneficiary;
    }
 public String getBeneficiary_tel() {
	return beneficiary_tel;	
}
 public void setBeneficiary_tel(String newBeneficiary_tel) {
	 	this.beneficiary_tel = newBeneficiary_tel;
	}
 public String getPin() {
	return pin;	
}
 public void setPin(String newPin) {
	 	this.pin = newPin;
	}


}
