package classes;

/**
 * Created by Ramzah Rehman on 3/20/2017.
 */
public class FeedBack {
    private Applicant applicant;
    private Job job;
    private Person SMEorManager;
    private String feedback;

    public Job getJob() {
        return job;
    }

    public Applicant getApplicant() {
        return applicant;
    }

    public Person getSMEorManager() {
        return SMEorManager;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setJob(Job job) {
        this.job = job;
    }

    public void setApplicant(Applicant applicant) {
        this.applicant = applicant;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public void setSMEorManager(Person SMEorManager) {
        this.SMEorManager = SMEorManager;
    }

}
