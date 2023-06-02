package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.FeedbackDao;
import model.Feedback;


@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private FeedbackDao feedbackDao;

    public FeedbackServlet() {
        super();
    }
        public void init() {
            feedbackDao = new FeedbackDao();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
			String name = request.getParameter("name");
	        String email = request.getParameter("email");
	        String message = request.getParameter("message");
	 
	        Feedback feedback = new Feedback();
	        
	        feedback.setName(name);
	        feedback.setEmail(email);
	        feedback.setMessage(message);
	        
	        try {
	            feedbackDao.registerFeedback(feedback);
	        } catch (Exception e) {
	           
	            e.printStackTrace();
	        }
	        request.getRequestDispatcher("homepage.jsp").forward(request, response);
	}

}
