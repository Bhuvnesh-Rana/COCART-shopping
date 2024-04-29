
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

public class Profile extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    PrintWriter pw = response.getWriter();
         HttpSession session = request.getSession(true);
         String uname = (String)session.getAttribute("username");
//         String e = request.getParameter("e");
//         String m = request.getParameter("m");
//         String a = request.getParameter("a");
         pw.print(uname);   
//          int check = 0;
//            try {
//                 Class.forName("com.mysql.cj.jdbc.Driver");
//                 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSL=false&allowPublicKeyRetrieval = true","root","root");
//                 Statement stmt=con.createStatement();
//                int rs = stmt.executeUpdate("update  user_detail (name) values ('" + u_name + "','" + u_email + "','" + u_mobno + "','" + u_age + "','" + u_ad + "','" + s_q + "','" + ans + "','" + u_pass + "')");
//                
//                
//                if (rs>0)
//            {
//                response.sendRedirect("Login.jsp");
//                
//            }
//                 if(check == 0){
//                         response.sendRedirect("Error.jsp");
//                         }
//            }
//                    catch (SQLException | ClassNotFoundException se)
//        {
//         pw.print(se);
//        }

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
