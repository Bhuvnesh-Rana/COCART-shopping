
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

public class Forgot_password extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
             PrintWriter pw = response.getWriter();
            String u_name =  request.getParameter("Username");
            String u_email = request.getParameter("email");
            String s_q = request.getParameter("Security question");
            String ans = request.getParameter("Answer");
            String u_pass = request.getParameter("Password");
            
            int check = 0;
            try {
                 Class.forName("com.mysql.cj.jdbc.Driver");
                 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSL=false&allowPublicKeyRetrieval = true","root","root");
                 Statement stmt=con.createStatement();
                 ResultSet rs = stmt.executeQuery("select * from user_detail where name = '" + u_name +"' and email = '" +u_email + "' and Security_question = '" + s_q + "' and answer = '" + ans + "'");
                 while(rs.next())
                 {
                     check = 1;
                     stmt.executeUpdate("update user_detail set password = '"+u_pass+"' where name = '" +u_name+"' and email = '"+u_email+"'");
                     response.sendRedirect("Login.jsp");
                 }
                 if(check == 0){
                         response.sendRedirect("Error.jsp");
                         }
            }
                    catch (SQLException | ClassNotFoundException se)
        {
         pw.print(se);
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
