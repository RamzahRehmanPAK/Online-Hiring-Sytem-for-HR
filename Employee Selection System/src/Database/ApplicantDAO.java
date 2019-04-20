package Database;

import classes.Applicant;
import classes.Job;
import classes.Person;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 * Created by Ramzah Rehman on 3/19/2017.
 */
public class ApplicantDAO extends DAO {
    @Override
    public boolean save(Object object) {

        Applicant applicant = (Applicant) object;

        try {
            DAO dao = new PersonDAO();
            dao.save((Person) applicant);

            PreparedStatement preparedStatement = con.prepareStatement("insert into HR.Applicant values (?,?,?,?)");
            preparedStatement.setString(1, applicant.getApplicationStatus());
            preparedStatement.setInt(2, applicant.getSMERank());
            preparedStatement.setInt(3, applicant.getManagerRank());
            preparedStatement.setString(4, applicant.getEmail());

            preparedStatement.executeUpdate();
            return true;


        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

    }

    public Applicant loadApplicant(Person person){

        Applicant applicant=new Applicant();

        try{
            PreparedStatement preparedStatement=con.prepareStatement(("select * from HR.Applicant where email=?"));
            preparedStatement.setString(1,person.getEmail());


            ResultSet rs=preparedStatement.executeQuery();
            if(rs.next()){

                applicant.setApplicationStatus(rs.getString("applicationStatus"));
                applicant.setSMERank(rs.getInt("SMERank"));
                applicant.setManagerRank(rs.getInt("ManagerRank"));

                applicant.setName(person.getName());
                applicant.setEmail(person.getEmail());
                applicant.setPhone(person.getPhone());
                applicant.setPassword(person.getPassword());
                applicant.setAddress(person.getAddress());
                applicant.setTypeOfUser(person.getTypeOfUser());
                return applicant;

            }
            return null;

        }
        catch (Exception e){
            e.printStackTrace();
            return null;

        }
    }
    public void updateInfo(){

    }

   public  ArrayList<Applicant> loads(){

        ArrayList<Applicant> foo=new ArrayList<Applicant>();

        Applicant applicant;

        try{
            PreparedStatement preparedStatement=con.prepareStatement(("select * from HR.Person where name=?"));
            preparedStatement.setString(1,"Ali Qadri");


            ResultSet rs=preparedStatement.executeQuery();
            while(rs.next()){
                applicant=new Applicant();

                applicant.setName(rs.getString("name"));
                applicant.setAddress(rs.getString("address"));
                applicant.setJob(Job.allJobs.get(1));
                foo.add(applicant);


            }
            return foo;

        }
        catch (Exception e){
            e.printStackTrace();
            return null;

        }
    }
}
