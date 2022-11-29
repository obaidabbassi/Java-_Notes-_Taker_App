package com.example.notes;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

@WebServlet(name = "Mynotes", value = "/Mynotes")
public class Mynotes extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        String title=request.getParameter("title");
        String des=request.getParameter("des");
        Notes notes=new Notes();
notes.setDate(new Date());

     boolean isInserted= addNotes(title,des,new Date());
        System.out.println(isInserted);

     if (isInserted){

String msg="Note successfully inserted...";


         HttpSession session=request.getSession();

         session.setAttribute("Message",msg);

         response.sendRedirect("index.jsp");
     }











    }
    public boolean addNotes(String notetitle,String notedes ,Date date){
boolean flage=false;
        Notes notes=new Notes();
        SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();

//        SessionFactory sessionFactory=new Configuration().configure().addAnnotatedClass(Student.class).buildSessionFactory();

        Session session=sessionFactory.openSession();



        session.beginTransaction();

        notes.setNotesDes(notedes);
        notes.setNotesTitle(notetitle);
        notes.setDate(new Date());



        session.persist(notes);

        session.getTransaction().commit();
flage=true;
        session.close();

return flage;
    }
}
