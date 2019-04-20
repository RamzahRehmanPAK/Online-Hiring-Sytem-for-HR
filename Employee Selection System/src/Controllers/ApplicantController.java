package Controllers;

import com.sun.net.httpserver.HttpServer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import classes.*;

/**
 * Created by Ramzah Rehman on 3/19/2017.
 */
@WebServlet("/ApplicantController")
public class ApplicantController extends HttpServlet {

    private void copy(final InputStream in, final OutputStream out)
            throws IOException {
        final byte[] b = new byte[8192];
        for (int r; (r = in.read(b)) != -1;) {
            out.write(b, 0, r);
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if (req.getSession().getAttribute("referredFrom").equals("CVsubmission.jsp")) {

            RequestDispatcher rd = req.getRequestDispatcher("/UploadServlet");
            rd.forward(req, resp);


        }


            if (req.getSession().getAttribute("referredFrom").equals("signUp.jsp")) {

            Applicant applicant=new Applicant();

            applicant.setName(req.getParameter("name-input-field"));
            applicant.setEmail(req.getParameter("email-input-field"));
            applicant.setPassword(req.getParameter("pawssword-input-field"));

            applicant.setAddress("dce ee fe");
            applicant.setPhone(req.getParameter("phoneno-input-field"));
            applicant.setTypeOfUser("Applicant");
            applicant.setApplicationStatus("NA");
            applicant.setManagerRank(-1);
            applicant.setSMERank(-1);

            if(applicant.saveInfo()){
                req.getSession().setAttribute("user",applicant);

                if(req.getSession().getAttribute("DirectToCV")!=null){
                    req.getSession().removeAttribute("DirectToCV");
                    RequestDispatcher rd = req.getRequestDispatcher("CVsubmission.jsp");
                    rd.forward(req, resp);
                }
                else{
                    RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
                    rd.forward(req, resp);
                }
            }
            else{
                RequestDispatcher rd = req.getRequestDispatcher("signUp.jsp");
                req.setAttribute("msg","Email already exists!");
                rd.forward(req, resp);
            }


        }
    }
}

