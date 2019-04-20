package Controllers;

import classes.Applicant;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by Ramzah Rehman on 3/20/2017.
 */
@WebServlet("/ArrangeInterviewController")
public class ArrangeInterviewController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Applicant> applicants=(ArrayList) req.getSession().getAttribute("applicants");

        RequestDispatcher rd = req.getRequestDispatcher("/EmailController");
        rd.forward(req, resp);

        req.getSession().removeAttribute("task");
        req.getSession().removeAttribute("applicants");

    }
}
