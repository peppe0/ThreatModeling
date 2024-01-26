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

        try {
            fase = Integer.valueOf(request.getParameter("stato"));
        }catch(Exception e){
            System.out.println(e);
        }
        if (fase == 1) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/index.jsp");
            dispatcher.forward(request, response);
        } else if(fase==2){
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/fase2.jsp");
            dispatcher.forward(request, response);
        }
          else  if(fase==3){
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/threatProcess.jsp");
            dispatcher.forward(request, response);
            }
        else{
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/index.jsp");
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