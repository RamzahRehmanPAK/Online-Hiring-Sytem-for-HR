package classes;
import Database.*;
/**
 * Created by Ramzah Rehman on 3/19/2017.
 */
public class Person {
    private String name ;
    private String email;
    private String password ;
    private String phone ;
    private String address;
    private String typeOfUser;

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getAddress() {
        return address;
    }

    public String getPassword() {
        return password;
    }

    public String getPhone() {
        return phone;
    }

    public String getTypeOfUser() {
        return typeOfUser;
    }


    public void setName(String name) {
        this.name = name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setTypeOfUser(String typeOfUser) {
        this.typeOfUser = typeOfUser;
    }
    public boolean saveInfo(){
        DAO dao=new PersonDAO();
        return dao.save(this);
    }
    public  boolean  validateandLoad(){
        PersonDAO dao=new PersonDAO();
        return dao.validateandLoad(this);
    }

}
