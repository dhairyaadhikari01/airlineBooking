package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookingDao;
import model.Booking;

@WebServlet("/register")

public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private BookingDao bookingDao;
  
    public BookingServlet() {
        super();
    } public void init() {
        bookingDao = new BookingDao();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
			    throws ServletException, IOException {

			        String fullName = request.getParameter("fullName");
			        String age = request.getParameter("age");
			        String email = request.getParameter("email");
			        String date = request.getParameter("date");
			        String seats = request.getParameter("seats");
			        String from = request.getParameter("from");
			        String to = request.getParameter("to");            

			        Booking booking = new Booking();
			        booking.setFullName(fullName);
			        booking.setAge(age);
			        booking.setEmail(email);
			        booking.setDate(date);
			        booking.setSeats(seats);
			        booking.setFrom(from);
			        booking.setTo(to);
			       
			    	
			        
			        try {
			            bookingDao.registerBooking(booking);
			        } catch (Exception e) {
			           
			            e.printStackTrace();
			        } 
			        request.setAttribute("from", from);
			        request.setAttribute("to", to);
			        request.setAttribute("date", date);
			        

			        request.getRequestDispatcher("id.jsp").forward(request, response);
			        
			    }
}
