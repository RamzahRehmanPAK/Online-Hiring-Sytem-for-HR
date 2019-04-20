package classes;

import Database.ApplicantDAO;
import Database.*;

import java.util.ArrayList;

/**
 * Created by Ramzah Rehman on 3/19/2017.
 */
public class Applicant extends Person {

    public static ArrayList <Applicant> applicants=new ArrayList<Applicant>();
    private Job job;
    private String cv;
    private String applicationStatus;
    private int SMERank;
    private int ManagerRank;

    public int getManagerRank() {
        return ManagerRank;
    }

    public int getSMERank() {
        return SMERank;
    }

    public String getApplicationStatus() {
        return applicationStatus;
    }

    public Job getJob() {
        return job;
    }

    public String getCv() {
        return cv;
    }

    public void setApplicationStatus(String applicationStatus) {
        this.applicationStatus = applicationStatus;
    }

    public void setManagerRank(int managerRank) {
        ManagerRank = managerRank;
    }

    public void setSMERank(int SMERank) {
        this.SMERank = SMERank;
    }
    public boolean saveInfo(){
        DAO dao=new ApplicantDAO();
            return dao.save(this);
    }
    public static Applicant loadApplicant(Person person){
        ApplicantDAO dao=new ApplicantDAO();
        return dao.loadApplicant(person);
    }

    public void setJob(Job job) {
        this.job = job;
    }

    public void setCv(String cv) {
        this.cv = cv;
    }
    public void updateInfo(){
        ApplicantDAO dao=new ApplicantDAO();
        dao.updateInfo();//to be done
    }
    public static void loads(){
    ApplicantDAO dao=new ApplicantDAO();
        ArrayList<Applicant> appli=dao.loads();

        for(int i=0;i<appli.size();i++){
            applicants.add(appli.get(i));
        }
    }
}
