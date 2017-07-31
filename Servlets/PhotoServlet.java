

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class PhotoServlet
 */
@WebServlet(urlPatterns={"/uploadphoto","/editphoto","/updatephoto"})
public class PhotoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PhotoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/*
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		if (request.getServletPath().equals("/editphoto")) {
			int id = Integer.valueOf(request.getParameter("id"));
			
			request.setAttribute("photoId", id);
			
			request.getRequestDispatcher("editphoto.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		if (request.getServletPath().equals("/uploadphoto")) {
			String fname = request.getParameter("imginp");
			String title = request.getParameter("title");
			String desc = request.getParameter("desc");
			String tags = request.getParameter("tag");
			String type = request.getParameter("btn");
			boolean privacy = false;
			if (type.equals("Post as public photo")) {
				privacy = false;
			} else if (type.equals("Post as private photo")) {
				privacy = true;
			}
			
			//upload to DB and stuff
			
			request.setAttribute("msg", title + " successfully uploaded!");
			request.getRequestDispatcher("uploadpage.jsp").forward(request, response);
		}
	}

}
