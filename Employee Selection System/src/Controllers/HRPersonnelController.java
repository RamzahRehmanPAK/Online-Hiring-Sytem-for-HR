package Controllers;

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
@WebServlet("/HRPersonnelController")
public class HRPersonnelController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String s;
        if((s=(String)req.getSession().getAttribute("task"))!=null){
            if(s.equals("saveJob")){
                RequestDispatcher rd = req.getRequestDispatcher("/JobController");
                rd.forward(req, resp);
            }
        }

        if((s=(String)req.getSession().getAttribute("task"))!=null){
            if(s.equals("arrangeInterview")){
                RequestDispatcher rd = req.getRequestDispatcher("/ArrangeInterviewController");
                rd.forward(req, resp);
            }
        }
    }
}
