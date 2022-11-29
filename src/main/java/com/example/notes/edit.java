package com.example.notes;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import java.io.IOException;
import java.util.Date;

@WebServlet(name = "edit", value = "/edit")
public class edit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

String spid=request.getParameter("spId");

//int dbId=Integer.parseInt(spid);
        String title=request.getParameter("title");
        String Desc=request.getParameter("des");
        System.out.println(spid);
        System.out.println(title);
        System.out.println(Desc);


       boolean isupdated=updateNotes(Integer.parseInt(spid),title,Desc);

        System.out.println(isupdated);

       if (isupdated){



           response.sendRedirect("view_notes.jsp");
       }

    }
    public boolean updateNotes(int id,String title,String Des){
        boolean flage=false;
        Notes notes=new Notes();
        SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();


        Session session=sessionFactory.openSession();



        session.beginTransaction();
String q="update Notes set notesTitle=:t,notesDes=:d where notesId=:ID";

Query query=session.createQuery(q);

query.setParameter("t",title);
        query.setParameter("d",Des);
        query.setParameter("ID",id);

      int j=  query.executeUpdate();
        System.out.println(j);
        session.getTransaction().commit();
        flage=true;
        session.close();

        return flage;
    }
}
