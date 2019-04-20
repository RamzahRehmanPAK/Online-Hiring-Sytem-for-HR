package Controllers;


import classes.Applicant;

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
@WebServlet("/ManagerController")
public class ManagerController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String s;
        if((s=(String)req.getSession().getAttribute("task"))!=null){
            if(s.equals("rankParticipant")){

                Applicant applicant=(Applicant) req.getSession().getAttribute("applicant");
                applicant.setManagerRank(Integer.parseInt(req.getParameter("rank")));
                applicant.updateInfo();

                req.getSession().removeAttribute("task");
                req.getSession().removeAttribute("applicant");

            }
        }

    }
}
