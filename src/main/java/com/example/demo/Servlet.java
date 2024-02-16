package com.example.demo;

import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(urlPatterns = ""
)
public class Servlet extends HttpServlet {
    private String s;
    private int id;

    public void init() {
        this.id= 1;
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

    int fase=0;
    RequestDispatcher dispatcher=null;
     try {
         id = Integer.valueOf(request.getParameter("id"));
     }catch(Exception e){
         System.out.println("Eccezione in doGet = "+e);
     };

     switch (id){
         case 1 :{
             dispatcher = request.getRequestDispatcher("/WEB-INF/index.jsp");
             dispatcher.forward(request, response);
         }break;
         case 2:{
             dispatcher = request.getRequestDispatcher("/WEB-INF/threatProcess.jsp");
             dispatcher.forward(request, response);
         }break;
         case 3:{
             dispatcher = request.getRequestDispatcher("/WEB-INF/fase5.jsp");
             dispatcher.forward(request, response);
         }break;
         default: {
             dispatcher = request.getRequestDispatcher("/WEB-INF/index.jsp");
             dispatcher.forward(request, response);
         }

        }

    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        HttpSession session = request.getSession();
        RequestDispatcher dispatcher=null;
        int fase=0;
        try {
            fase = Integer.valueOf(request.getParameter("stato"));
        }catch (Exception e)
        {
            System.out.println("errore doPost = "+e);
        }

        switch (fase){
            case 1: {
                dispatcher = request.getRequestDispatcher("/WEB-INF/fase5.jsp");
                dispatcher.forward(request, response);
            }break;
            case 2:{
                setFase1(session,
                        request.getParameter("nome"), request.getParameter("versione"),
                        request.getParameter("descrizione"),request.getParameter("proprietario"),
                        request.getParameter("partecipanti"),request.getParameter("reviewer"));
                System.out.println("nome = "+session.getAttribute("nome"));
                System.out.println("versione = " + session.getAttribute("versione"));
                System.out.println("descrizione = " + session.getAttribute("descrizione"));
                System.out.println("proprietario = " + session.getAttribute("proprietario"));
                System.out.println("partecipanti = " + session.getAttribute("partecipanti"));
                System.out.println("reviewer = " + session.getAttribute("reviewer"));
                dispatcher = request.getRequestDispatcher("/WEB-INF/fase2.jsp");
                dispatcher.forward(request, response);
            }break;
            case 3:{
                dispatcher = request.getRequestDispatcher("/WEB-INF/fase3.jsp");
                dispatcher.forward(request, response);
            }
            case 4:{
                dispatcher = request.getRequestDispatcher("/WEB-INF/fase4.jsp");
                dispatcher.forward(request, response);
            }break;
            default:{
                dispatcher = request.getRequestDispatcher("/WEB-INF/index.jsp");
                dispatcher.forward(request, response);
            }
        }
    }

    public void destroy() {
    }


    public void setFase1(HttpSession session, String nome, String versione,String descrizione, String proprietario, String partecipanti,String reviewer){
        session.setAttribute("nome", nome);
        session.setAttribute("versione", versione);
        session.setAttribute("descrizione",descrizione);
        session.setAttribute("proprietario",proprietario);
        session.setAttribute("partecipanti",partecipanti);
        session.setAttribute("reviewer",reviewer);
    }

    public void setFase2(HttpSession session,int id, String descrizione){
        session.setAttribute("id", id);
        session.setAttribute("descrizione", descrizione);
    }

}