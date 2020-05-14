package aufgabe_312;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DemoServlet2")
public class DemoServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DemoServlet2() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String parameter = "Max Mustermann";

		ServletOutputStream out = response.getOutputStream();
		out.println("<html>");
		out.println("<head><title>Hello " + parameter + "</title></head>");
		out.println("<body>");
		out.println("<h3>Hello " + parameter + "</h3>");
		out.println("</body>");
		out.println("</html>");

		if (request.getParameter("name") != null) {
			parameter = request.getParameter("name");
			System.out.println("Hello " + parameter);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}
}