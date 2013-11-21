package com.portal.signup.servlets;

import java.io.IOException;
import java.util.logging.Logger;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;

public class SignUpServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private static final Logger log = Logger.getLogger(SignUpServlet.class.getName());
	
	@Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		String emailadd = req.getParameter("email");
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		Entity email = new Entity("Email");
        log.info( emailadd);
        email.setProperty("email", emailadd);
        datastore.put(email);
        resp.sendRedirect("/pages/signupcomplete.jsp");
	}
}
