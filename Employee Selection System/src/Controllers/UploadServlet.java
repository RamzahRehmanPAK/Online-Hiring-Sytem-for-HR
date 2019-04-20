package Controllers;

/**
 * Created by Ramzah Rehman on 3/19/2017.
 */


import classes.Applicant;
import classes.Job;
import classes.Person;
import com.oreilly.servlet.MultipartRequest;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.*;



@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        MultipartRequest m = new MultipartRequest(req, "c:/temp");
        Enumeration<String > e=m.getFileNames();
       String fileName=e.nextElement();
        System.out.println(fileName);


        Applicant u1=(Applicant) req.getSession().getAttribute("user");

        u1.setJob(Job.allJobs.get(0));
                 u1.setCv(fileName);
            u1.setApplicationStatus("new");
        RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
        rd.forward(req, resp);

    }
}