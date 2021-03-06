/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import static com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Int;
import dao.TaiKhoanUserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//import org.jboss.weld.servlet.SessionHolder;

/**
 *
 * @author Hieu
 */
@WebServlet(name = "ChangeInformation", urlPatterns = {"/ChangeInformation"})
public class ChangeInformation extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ChangeInformation</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChangeInformation at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
            request.setCharacterEncoding("UTF-8");
            String newHoTen= request.getParameter("hoten");
            String newCMND= request.getParameter("cmnd");
            String newSDT= request.getParameter("sdt");
            String newDiaChi= request.getParameter("DiaChi");
            HttpSession session= request.getSession();
            String email =(String) session.getAttribute("email") ;
            
            TaiKhoanUserDAO tkd= new TaiKhoanUserDAO();
            
            boolean flag= tkd.UpdateUserInfo(email, newSDT, newCMND, newHoTen, newDiaChi);
            String alertUpdateUser="";
            if(flag==true){
                alertUpdateUser="Đổi thông tin thành công";
                request.setAttribute("updateUserInformation",alertUpdateUser );
                RequestDispatcher rs = getServletContext().getRequestDispatcher("/UserInformation.jsp");
                rs.forward(request, response);
            }else{
                alertUpdateUser="Đổi thông tin thất bại";
                request.setAttribute("updateUserInformation", alertUpdateUser);
                RequestDispatcher rs = getServletContext().getRequestDispatcher("/UserInformation.jsp");
                rs.forward(request, response);
            }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
