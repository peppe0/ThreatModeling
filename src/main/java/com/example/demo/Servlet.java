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
    private int fase;


    public void init() {
        fase = 1;
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

    int id;
    RequestDispatcher dispatcher=null;
        try{
            id = Integer.parseInt(request.getParameter("id"));
            if (id == 1) {
                 dispatcher = request.getRequestDispatcher("/WEB-INF/index.jsp");
                dispatcher.forward(request, response);}
            if (id == 2) {
                 dispatcher = request.getRequestDispatcher("/WEB-INF/threatProcess.jsp");
                dispatcher.forward(request, response);}
            if (id == 3) {
                dispatcher = request.getRequestDispatcher("/WEB-INF/fase1.jsp");
                dispatcher.forward(request, response);}
            else{
                 dispatcher = request.getRequestDispatcher("/WEB-INF/index.jsp");
                dispatcher.forward(request, response);}

        }catch(Exception ex){
        System.out.println(ex);
    }

        try {
            fase = Integer.valueOf(request.getParameter("stato"));
        }catch(Exception e){
            System.out.println(e);
        }
        if (fase == 1) {
             dispatcher = request.getRequestDispatcher("/WEB-INF/index.jsp");
            dispatcher.forward(request, response);
        } else if(fase==2){
             dispatcher = request.getRequestDispatcher("/WEB-INF/fase2.jsp");
            dispatcher.forward(request, response);
        }
          else  if(fase==3){
             dispatcher = request.getRequestDispatcher("/WEB-INF/threatProcess.jsp");
            dispatcher.forward(request, response);
            }
        else{
             dispatcher = request.getRequestDispatcher("/WEB-INF/index.jsp");
            dispatcher.forward(request, response);
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    public void destroy() {
    }
}