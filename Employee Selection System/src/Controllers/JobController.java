package Controllers;

import classes.Job;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Ramzah Rehman on 3/20/2017.
 */
@WebServlet("/JobController")
public class JobController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

       Job job=new Job();

        job.setJobTitle(req.getParameter("JobTitle"));
        job.setCategory(req.getParameter("Category"));
        job.setPayRate(req.getParameter("PayRate"));
       job.setDepartment(req.getParameter("Department"));
       job.setStartDate(req.getParameter("StartDate"));
       job.setDeadline(req.getParameter("Deadline"));
       job.setAbout(req.getParameter("About"));
       job.setDuties(req.getParameter("Duties"));
       job.setSkills(req.getParameter("Skills"));
       job.setEducationExperience(req.getParameter("EducationExperience"));
       job.setPositionStatus(req.getParameter("PositionStatus"));

        job.save();
        Job.allJobs.add(job);
        req.getSession().removeAttribute("task");

        req.setAttribute("status","Job added Successfully");
        RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
        rd.forward(req, resp);

    }
}

