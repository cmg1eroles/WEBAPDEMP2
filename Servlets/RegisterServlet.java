

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public RegisterServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		// get input
		String username = request.getParameter("uname");
		String password = request.getParameter("pword");
		String description = request.getParameter("desc");
		
		//check if credentials already taken (hardcoded for now since pwede haha)
		if (username.equals("cmg1eroles") ||
			username.equals("michaelrespicio") ||
			username.equals("jjmojica")) {
			//show error, already taken
			// go back to register
			request.setAttribute("regerror", "Username already taken!");
			request.getRequestDispatcher("loginreg.jsp").forward(request, response);
		} else {
			//add new user to db or something
			
			//add session
			request.getSession().setAttribute("un", username);
			
			//add cookie
			Cookie cookie = new Cookie("username", username);
			//extend to 3 weeks
			cookie.setMaxAge(60*60*24*7*3);
			response.addCookie(cookie);
			
			//go to success page
			request.getRequestDispatcher("homepage.jsp").forward(request, response);
		}
	}

}
