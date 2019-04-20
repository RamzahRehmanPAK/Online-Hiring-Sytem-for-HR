package Controllers;

import classes.Applicant;
import classes.Job;
import classes.Person;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Ramzah Rehman on 3/18/2017.
 */
@WebServlet("/controller")
public class controller extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if(req.getSession().getAttribute("jobs")==null)
        {
            req.getSession().setAttribute("jobs", Job.allJobs);
        }
        if(req.getSession().getAttribute("applicants")==null)
        {
            req.getSession().setAttribute("applicants", Applicant.applicants);
        }


        if (req.getSession().getAttribute("referredFrom").equals("index.jsp")) {
            Person p=(Person)req.getSession().getAttribute("user");

            if(p.getTypeOfUser().equals("Manager")){
                RequestDispatcher rd = req.getRequestDispatcher("/ManagerController");
                rd.forward(req, resp);
            }
            if(p.getTypeOfUser().equals("SME")){
                RequestDispatcher rd = req.getRequestDispatcher("/SMEController");
                rd.forward(req, resp);
            }
            if(p.getTypeOfUser().equals("HRPersonnel")){
                RequestDispatcher rd = req.getRequestDispatcher("/HRPersonnelController");
                rd.forward(req, resp);
            }

        }

            if (req.getSession().getAttribute("referredFrom").equals("login.jsp")) {

            Person person=new Person();
            person.setEmail(req.getParameter("email"));
            person.setPassword(req.getParameter("password"));


            if(person.validateandLoad()){
                if(person.getTypeOfUser().equals("Applicant")){
                    //applicant

                    Applicant applicant= Applicant.loadApplicant(person);
                    req.getSession().setAttribute("user",applicant);


                    if(req.getSession().getAttribute("DirectToCV")!=null){
                        req.getSession().removeAttribute("DirectToCV");
                        RequestDispatcher rd = req.getRequestDispatcher("CVsubmission.jsp");
                        rd.forward(req, resp);
                    }
                    else {
                        RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
                        rd.forward(req, resp);
                    }

                }
                if(person.getTypeOfUser().equals("HRPersonnel")) {//not applicant
                    req.getSession().setAttribute("user",person);
                    RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
                    rd.forward(req, resp);
                }
                if(person.getTypeOfUser().equals("Manager") || person.getTypeOfUser().equals("SME") ) {//not applicant
                    req.getSession().setAttribute("user",person);
                    RequestDispatcher rd = req.getRequestDispatcher("RankParticipant.jsp");
                    rd.forward(req, resp);
                }
            }
            else{

                req.setAttribute("msg","User doesn't exist!");
                RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
                rd.forward(req, resp);
            }

        }

        if (req.getSession().getAttribute("referredFrom").equals("signUp.jsp")) {



            RequestDispatcher rd = req.getRequestDispatcher("/ApplicantController");
            rd.forward(req, resp);

        }

        if (req.getSession().getAttribute("referredFrom").equals("CVsubmission.jsp")) {


            RequestDispatcher rd = req.getRequestDispatcher("/ApplicantController");
            rd.forward(req, resp);

        }
    }
}
