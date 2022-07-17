/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dal.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Attendance;
import model.Slot;
import model.Student;
/**
 *
 * @author hongs
 */
public class TakingAttendance extends HttpServlet {

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
        HttpSession session = request.getSession();
        if (session.getAttribute("user") == null) {
            response.getWriter().print("Errror 404");
        } else {
            try {
                String status = request.getParameter("status");
                String sid = request.getParameter("sid");
                String gcode = request.getParameter("gcode");
                DAO dao = new DAO();
                Slot s = dao.getSlotById(Integer.valueOf(sid));
                request.setAttribute("s", s);

                ArrayList<Student> slist = dao.getAllStudentByGroupCode(gcode);
                ArrayList<Attendance> alist = dao.getAllCheckedStudent(Integer.valueOf(sid));
                if ("false".equals(status)) {
                    request.setAttribute("slist", slist);
                    request.getRequestDispatcher("FirstCheck.jsp").forward(request, response);
                }
                if ("true".equals(status)) {
                    request.setAttribute("alist", alist);
                    request.getRequestDispatcher("Checked.jsp").forward(request, response);
                }
            } catch (Exception e) {
            }
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
        DAO dao = new DAO();
        String slotid = request.getParameter("sid");
        String instructorid = request.getParameter("instructorid");
        String gcode = request.getParameter("gcode");
        Slot s = dao.getSlotById(Integer.valueOf(slotid));
        ArrayList<Student> slist = dao.getAllStudentByGroupCode(gcode);
        for (Student student : slist) {
            String checkbox = request.getParameter(String.valueOf(student.getCode()));
            int status = Integer.valueOf(checkbox);
            response.getWriter().println(student.getCode() + "-" + status);

            dao.insertAttendance(Integer.valueOf(slotid), student.getId(), status, instructorid);
        }
        dao.updateSlotStatus(Integer.valueOf(slotid));
        response.sendRedirect("Timetable");
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