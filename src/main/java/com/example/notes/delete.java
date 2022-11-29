package com.example.notes;

import jakarta.persistence.Query;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.io.IOException;
import java.util.Date;

@WebServlet(name = "delete", value = "/delete")
public class delete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

String id=request.getParameter("Id1");


boolean delete=isNotesDeleted(Integer.parseInt(id));

        System.out.println(delete);
if (delete){


    response.sendRedirect("view_notes.jsp");
}




    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }

    public boolean isNotesDeleted(int ID){
        boolean flage=false;
        Notes notes=new Notes();
        SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();



        Session session=sessionFactory.openSession();



        session.beginTransaction();
String q="delete from Notes where notesId=:c";


        Query query=session.createQuery(q);

query.setParameter("c",ID);
query.executeUpdate();



        session.getTransaction().commit();
        flage=true;
        session.close();

        return flage;
    }
}
