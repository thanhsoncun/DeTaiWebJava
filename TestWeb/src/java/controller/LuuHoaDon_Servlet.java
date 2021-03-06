/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import dao.ChuyenBayDAOImpl;
import dao.DonHangDAOImpl;
import dao.HanhKhachDAOImpl;
import dao.TaiKhoanUserDAO;
import function.Payment;
import function.RandomKey;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.WebServiceRef;
//import javax.xml.ws.WebServiceRef;
import model.ChuyenBay;
import model.HanhKhach;
import model.TaiKhoanUser;
import model.Ve;
//import payment.PayServvice;
//import payment.Payment_Service;
//import payment.Payment_Service;

/**
 *
 * @author Hieu
 */
@WebServlet(name = "LuuHoaDon_Servlet", urlPatterns = {"/LuuHoaDon_Servlet"})
public class LuuHoaDon_Servlet extends HttpServlet {

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
            out.println("<title>Servlet LuuHoaDon_Servlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LuuHoaDon_Servlet at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession();
        //String macbve = "";
        String mail = (String) session.getAttribute("email");
        int soluong = (Integer) session.getAttribute("soluong");
        String macbStr = request.getParameter("macb");
        int macb = Integer.parseInt(macbStr);
        String type = request.getParameter("type");
        String macbveStr;
        int macbve;
        String trangThai = "Đã thanh toán";
        DonHangDAOImpl dh = new DonHangDAOImpl();
        String MaHD = request.getParameter("orderID");
        String nguoigui = request.getParameter("remitterID");
        String matkhau = request.getParameter("password");

        int total = Integer.parseInt(request.getParameter("total"));
        BigInteger amount = new BigInteger(total + "");
        for (int i = 1; i <= soluong; i++) {
            HanhKhach hk = (HanhKhach) session.getAttribute("tthkdi" + i);
            boolean kq = dh.updateListDonHang(hk.getCMND(), macb, trangThai);
            if (type.equals("roundtrip")) {
                macbveStr = request.getParameter("macbve");
                macbve = Integer.parseInt(macbveStr);
                boolean kq1 = dh.updateListDonHang(hk.getCMND(), macbve, trangThai);
            }
        }
    }
}
