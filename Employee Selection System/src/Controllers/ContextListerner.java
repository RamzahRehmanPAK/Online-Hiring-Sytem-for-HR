package Controllers;

        import classes.Applicant;
        import classes.Job;

        import java.sql.*;
        import java.util.List;
        import javax.servlet.*;
        import javax.servlet.annotation.WebListener;

@WebListener
public class ContextListerner implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        Job.loadJobs();
        Applicant.loads();
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}