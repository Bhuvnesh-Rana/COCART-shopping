
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PaymentServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
       
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//          String name = request.getParameter("uname");
//                PrintWriter pw = response.getWriter();
//
//         try {
//                 Class.forName("com.mysql.cj.jdbc.Driver");
//                 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSL=false&allowPublicKeyRetrieval = true","root","root");
//                 Statement stmt=con.createStatement();
//                 int rs = stmt.executeUpdate("insert into orders (u_name) values ('" + name + "')");
//                
//                
//                if (rs>0)
//            {
//                response.sendRedirect("Login.jsp");
//                
//            }
//                
//                 
//               
//            } 
//            catch (SQLException se)
//        {
//         pw.print(se);
//        }
//        catch(ClassNotFoundException c)
//        {
//            pw.print(c);
//        }
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter pw = response.getWriter();
           String name = request.getParameter("uname");
           pw.println(name);
        String pNames = request.getParameter("pro_id");
        String Amount = request.getParameter("sum");
//        List<String> productList = new ArrayList<String>(Arrays.asList(pNames.split(",")));
//        out.println(productList);
//        out.println(Amount);
//        out.println(pNames);
        
    pw.print(Amount);
            pw.print(pNames);
     try 
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSL=false&allowPublicKeyRetrieval ="
                    + " true","root","root");
            Statement stmt=con.createStatement();
            pw.print(Amount);
            pw.print(pNames);
            //running query to check username and password.
                      // stmt.executeUpdate("insert into orders (product, total) values ('" + pNames + "','" + Amount + "')");

         int rs = stmt.executeUpdate("insert into orders (product, total) values ('" + pNames + "','" + Amount + "')");
         pw.print(rs);
      if (rs>0)
            {
                response.sendRedirect("index.jsp");
                
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
