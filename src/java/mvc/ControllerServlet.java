/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mvc;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author Vishal
 */
@WebServlet(name = "ControllerServlet", urlPatterns = {"/ControllerServlet"})
public class ControllerServlet extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
              String name=request.getParameter("name");
                  String department=request.getParameter("department");
                      String email=request.getParameter("email");
            String password=request.getParameter("password");
            LoginBean bean=new LoginBean();
            bean.setName(name);
            bean.setDepartment(department);
            bean.setEmail(email);
            bean.setPassword(password);
            request.setAttribute("bean", bean);
            boolean status=bean.validate();
            if(status){
            RequestDispatcher rd=request.getRequestDispatcher("login_sucess.jsp");
            rd.forward(request,response);
            
        }
            else{
                    RequestDispatcher rd=request.getRequestDispatcher("login_error.jsp");
                    rd.forward(request,response);
                    }
        
    
        }
    
    }
}
    