package Controllers;

import classes.Applicant;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Ramzah Rehman on 3/20/2017.
 */
public class SMEController extends HttpServlet {


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String s;
        if((s=(String)req.getSession().getAttribute("task"))!=null){
            if(s.equals("rankParticipant")){

                Applicant applicant=(Applicant) req.getSession().getAttribute("applicant");
                applicant.setSMERank(Integer.parseInt(req.getParameter("rank")));
                applicant.updateInfo();

                req.getSession().removeAttribute("task");
                req.getSession().removeAttribute("applicant");

            }
        }

    }
}
