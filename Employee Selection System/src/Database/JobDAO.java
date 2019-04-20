package Database;

import classes.Job;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * Created by Ramzah Rehman on 3/20/2017.
 */
public class JobDAO extends DAO {

    @Override
    public boolean save(Object obj){
        return true;
    }
    public int saveJob(Object object) {
        Job job=(Job) object;

        try {
            PreparedStatement preparedStatement = con.prepareStatement("insert into HR.Job values(?,?,?,?,?,?,?,?,?,?,?)");

            preparedStatement.setString(1,job.getJobTitle());
            preparedStatement.setString(2,job.getCategory());
            preparedStatement.setString(3,job.getPayRate());
            preparedStatement.setString(4,job.getDepartment());
            preparedStatement.setString(5,job.getStartDate());
            preparedStatement.setString(6,job.getDeadline());
            preparedStatement.setString(7,job.getAbout());
            preparedStatement.setString(8,job.getDuties());
            preparedStatement.setString(9,job.getSkills());
            preparedStatement.setString(10,job.getEducationExperience());
            preparedStatement.setString(11,job.getPositionStatus());

            preparedStatement.executeUpdate();


            Statement statement = con.createStatement();
            ResultSet rs=statement.executeQuery("slect id from HR.Job");

            ResultSet rs2=null;
            while(rs.next()){
                rs2=rs;
            }
            return rs2.getInt(1);

        }
        catch (Exception e){
            e.printStackTrace();
            return -1;
        }


    }
    public ArrayList<Job> load(){

        ArrayList arrayList=new ArrayList<Job>();
        Job job;
        try{
            Statement statement=con.createStatement();

            ResultSet rs=statement.executeQuery("SELECT * from HR.Job");

            while (rs.next()){
                job=new Job();
                job.setJobTitle(rs.getString("JobTitle"));
                job.setCategory(rs.getString("Category"));
                job.setPayRate(rs.getString("PayRate"));
                job.setDepartment(rs.getString("Department"));
                job.setStartDate(rs.getString("StartDate"));
                job.setDeadline(rs.getString("Deadline"));
                job.setAbout(rs.getString("About"));
                job.setDuties(rs.getString("Duties"));
                job.setSkills(rs.getString("Skills"));
                job.setEducationExperience(rs.getString("EducationExperience"));
                job.setPositionStatus(rs.getString("PositionStatus"));
                job.setId(rs.getInt("id"));
                arrayList.add(job);
            }

            return arrayList;
        }
        catch (Exception e){
            e.printStackTrace();
            return arrayList;
        }
    }
}
