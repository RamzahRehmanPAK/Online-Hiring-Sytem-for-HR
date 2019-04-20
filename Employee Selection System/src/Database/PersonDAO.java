package Database;
import classes.*;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Created by Ramzah Rehman on 3/19/2017.
 */
public class PersonDAO extends DAO {
    @Override
    public boolean save(Object object) {

        Person person=(Person) object;

        try{
            PreparedStatement preparedStatement=con.prepareStatement("insert into HR.Person values (?,?,?,?,?,?)");
            preparedStatement.setString(1,person.getName());
            preparedStatement.setString(2,person.getEmail());
            preparedStatement.setString(3,person.getPassword());
            preparedStatement.setString(4,person.getPhone());
            preparedStatement.setString(5,person.getAddress());
            preparedStatement.setString(6,person.getTypeOfUser());
            preparedStatement.executeUpdate();

            return true;
        }
        catch (Exception e){
            e.printStackTrace();
            return false;
        }

    }
    public boolean validateandLoad(Object object){
        Person person=(Person) object;

        try{
            PreparedStatement preparedStatement=con.prepareStatement(("select * from HR.Person where email=? AND password=?"));
            preparedStatement.setString(1,person.getEmail());
            preparedStatement.setString(2,person.getPassword());

            ResultSet rs=preparedStatement.executeQuery();
            if(rs.next()){

                person.setName(rs.getString("name"));
                person.setPhone(rs.getString("phone"));
                person.setAddress(rs.getString("address"));
                person.setTypeOfUser(rs.getString("typeOfUser"));

                return true;
            }
            else{
                return false;
            }
        }
        catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

}
