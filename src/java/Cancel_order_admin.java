
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Cancel_order_admin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

            PrintWriter pw = response.getWriter();
            String id = request.getParameter("id");
            pw.print(id);
            
             try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSL=false&allowPublicKeyRetrieval = true","root","root");
          
            PreparedStatement pst = con.prepareStatement("delete orders, ut from orders inner join ut where orders.order_id=ut.u_id and orders.order_id = ? ");           
            pst.setString(1,id);
           
            int a = pst.executeUpdate();
        
              if (a!=0)
            {
                response.sendRedirect("Admin-orders.jsp");
            // pw.print(" User successfully removed...");
             }
              else if (a==0)
{
//pw.println("Row has been deleted successfully.");
    response.sendRedirect("Admin-Users.jsp");
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
