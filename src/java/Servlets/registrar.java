/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Entidades.Direccion;
import Entidades.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javafx.scene.control.Alert;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author cetecom
 */
@WebServlet(name = "registrar", urlPatterns = {"/registrar"})
public class registrar extends HttpServlet {

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
            /*creo sesion*/
            EntityManagerFactory emf;
            emf=Persistence.createEntityManagerFactory("WebMegaSushiTiendaPU");
            
            EntityManager em = emf.createEntityManager();
            
            String idUs;
            String pass;
            String telefono;
            
            int direID = 0;
            String calle ;
            String comuna;
            int nmro;
            int nrodpto;
            if (request.getParameter("nombre").trim().length() <4 || 
                request.getParameter("nombre").trim().length() <4 ) 
            {
                out.print("Ni el nombre de usuario ni la contraseña pueden tener menos de 4 caracteres");
            }
            else
            {
                idUs =request.getParameter("nombre");
                pass = request.getParameter("password");
                telefono = request.getParameter("telefono");


                Usuario us =new Usuario(idUs, pass);
                us.setTelefono(telefono);

                em.getTransaction().begin();
                em.persist(us);
                em.getTransaction().commit();
                if (request.getParameter("calle").trim().length() < 4 || 
                    request.getParameter("comuna").trim().length() < 4 || 
                    request.getParameter("numero").trim().length() < 1 ||
                    request.getParameter("numerodpto").trim().length() < 1) 
                {
                    out.print("Calle y comuna deben tener almenos 4 caracteres y los números deben ser mayores a 0");
                    response.sendRedirect("registrarse.jsp");
                }
                else   
                {

                    direID = Integer.parseInt(request.getParameter("idDireccion"));
                    calle = request.getParameter("calle");
                    comuna = request.getParameter("comuna");
                    nmro = Integer.parseInt(request.getParameter("numero"));
                    nrodpto = Integer.parseInt(request.getParameter("numerodpto"));

                    Direccion d=new Direccion(direID, calle, comuna, nmro);
                    d.setUsuarioid(us);
                    d.setNumeroDpto(nrodpto);
                    em.getTransaction().begin();
                    em.persist(d);
                    em.getTransaction().commit();
                    HttpSession sesion = request.getSession(true);

                    sesion.setAttribute("usuario",us);
                    em.close();
                    emf.close();
                    response.sendRedirect("index.jsp");
                }
            }
 
            
            
            
            /*Lo que intente hacer es crear primero la direccion , hacerle el commit para que la guarde , y despues enlazar esa direccion al usuario*/
           
            
           
            /*
            dir.setDireccionID(Integer.parseInt(request.getParameter("idDireccion")));
            dir.setCalle(request.getParameter("calle"));
            dir.setComuna(request.getParameter("comuna"));
            dir.setNumero(Integer.parseInt(request.getParameter("numero")));
            dir.setNumero(Integer.parseInt(request.getParameter("numerodpto")));
            */
           
            /*us.setDireccionID(dir.getDireccionID());*/
            
            /*^ Esa es la clave foranea , y pide un objeto tipo Direccion , como la tabla misma*/
            
            /*us.setId(request.getParameter("nombre"));
            us.setPassword(request.getParameter("password"));
            us.setTelefono(request.getParameter("telefono"));
            */
            
           
            
            
//            HttpSession ses = request.getSession(true);
//            
//            Usuario xx=(Usuario)ses.getAttribute("usuario");
//            
            
            
            /*
            HttpSession res = request.getSession(true);
            String nombreUsuario = request.getParameter("nombre");
            String emailUsuario = request.getParameter("telefono");
            String password = request.getParameter("password");
            String idDireccion = request.getParameter("idDireccion");
            String calle = request.getParameter("calle");
            String comuna = request.getParameter("comuna");
            String numero = request.getParameter("numero");
            String numerodpto = request.getParameter("numerodpto");
            
            Direccion nuevadireccion = new Direccion();
            Usuario nuevoUsuario = new Usuario();
            */ 
            
            /*Validaciones*/
            /*http://www.forosdelweb.com/f45/aporte-registro-login-usuarios-con-jsp-servlets-mysql-930805/*/

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
