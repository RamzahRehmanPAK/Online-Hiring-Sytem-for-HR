package classes;

import Database.DAO;
import Database.JobDAO;

import java.util.ArrayList;

/**
 * Created by Ramzah Rehman on 3/20/2017.
 */
public class Job {

    private String JobTitle;
    private String Category ;
    private String PayRate ;
    private String Department ;
    private String StartDate;
    private String Deadline ;
    private String About;
    private String Duties ;
    private String Skills ;
    private String EducationExperience ;
    private String PositionStatus ;
    private int id ;

    public static ArrayList<Job> allJobs=new ArrayList<Job>();

    public String getJobTitle() {
        return JobTitle;
    }

    public String getAbout() {
        return About;
    }

    public String getCategory() {
        return Category;
    }

    public String getDeadline() {
        return Deadline;
    }

    public String getDepartment() {
        return Department;
    }

    public String getDuties() {
        return Duties;
    }

    public String getEducationExperience() {
        return EducationExperience;
    }

    public int getId() {
        return id;
    }

    public String getPayRate() {
        return PayRate;
    }

    public String getPositionStatus() {
        return PositionStatus;
    }

    public String getSkills() {
        return Skills;
    }

    public String getStartDate() {
        return StartDate;
    }

    public void setJobTitle(String jobTitle) {
        JobTitle = jobTitle;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setAbout(String about) {
        About = about;
    }

    public void setCategory(String category) {
        Category = category;
    }

    public void setDeadline(String deadline) {
        this.Deadline = deadline;
    }

    public void setDepartment(String department) {
        Department = department;
    }

    public void setDuties(String duties) {
        Duties = duties;
    }

    public void setEducationExperience(String educationExperience) {
        EducationExperience = educationExperience;
    }

    public void setPayRate(String payRate) {
        PayRate = payRate;
    }

    public void setPositionStatus(String positionStatus) {
        PositionStatus = positionStatus;
    }

    public void setSkills(String skills) {
        this.Skills = skills;
    }

    public void setStartDate(String startDate) {
        StartDate = startDate;
    }
    public void save(){
        JobDAO JobDao= new JobDAO();
        int iid=JobDao.saveJob(this);
        this.id=iid;
    }
    public static void loadJobs(){
        JobDAO JobDao= new JobDAO();
       ArrayList<Job>s=JobDao.load();

        for(int i=0;i<s.size();i++){
            allJobs.add(s.get(i));
        }
    }
}
