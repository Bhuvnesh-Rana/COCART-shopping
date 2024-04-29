

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Signup extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter pw = response.getWriter();
            String u_name =  request.getParameter("Username");
            String u_email = request.getParameter("email");
            //int u_dob = Integer.parseInt(request.getParameter("dob"));
//            int u_mobno = Integer.parseInt(request.getParameter("Mobile no."));
            String u_mobno = request.getParameter("Mobile no.");
            int u_age = Integer.parseInt(request.getParameter("Age"));
            String u_ad = request.getParameter("Address");
            String s_q = request.getParameter("Security question");
            String ans = request.getParameter("Answer");
            String u_pass = request.getParameter("Password");
            
            
            try {
                 Class.forName("com.mysql.cj.jdbc.Driver");
                 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSL=false&allowPublicKeyRetrieval = true","root","root");
                 Statement stmt=con.createStatement();
                 int rs = stmt.executeUpdate("insert into user_detail (name , email , mobile , age , address , Security_question , answer , password ) values ('" + u_name + "','" + u_email + "','" + u_mobno + "','" + u_age + "','" + u_ad + "','" + s_q + "','" + ans + "','" + u_pass + "')");
                
                
                if (rs>0)
            {
                response.sendRedirect("Login.jsp");
                
            }
                
                 
               
            } 
            catch (SQLException se)
        {
         pw.print(se);
        }
        catch(ClassNotFoundException c)
        {
            pw.print(c);
        }
             pw.print("Data Stored");
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
