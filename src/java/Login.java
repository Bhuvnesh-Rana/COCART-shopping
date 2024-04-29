
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter pw = response.getWriter();
        String username = request.getParameter("username");     //getting values.
        String password = request.getParameter("password"); 
        //connecting to the database.
        try 
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSL=false&allowPublicKeyRetrieval ="
                    + " true","root","root");
            Statement stmt=con.createStatement();
            //running query to check username and password.
            ResultSet rs = stmt.executeQuery("select * from user_detail where name "
                    + "='" + username + "' and " + "password ='" +password + "'");
        
              if (rs.next())
            {
            HttpSession session = request.getSession(true);
            session.setAttribute("username", username);
            response.sendRedirect(request.getContextPath()+ "/Home_Page0.jsp");
             }
            else
            {
                response.sendRedirect("Error.jsp");        //will open Errorr.jsp if username and password are wrong.
                
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
