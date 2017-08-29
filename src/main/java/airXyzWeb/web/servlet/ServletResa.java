package airXyzWeb.web.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import airXyzWeb.web.data.Reservation;

/**
 * Servlet implementation class ServletResa
 */
@WebServlet("/ServletResa")
public class ServletResa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletResa() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String villeDepart = request.getParameter("villeDepart");
		String villeArrivee = request.getParameter("villeArrivee");
		String sDate = request.getParameter("date");
		Reservation reservation = new Reservation();
		reservation.setVilleDepart(villeDepart);
		reservation.setVilleArrivee(villeArrivee);
		reservation.setDate(sDate);
		HttpSession session = request.getSession();
		reservation.setUsername((String)session.getAttribute("username"));
		
		request.setAttribute("resa", reservation);
		
		RequestDispatcher rd = this.getServletContext()
				.getRequestDispatcher("/" + "statut_resa.jsp");
		//redirection (coté serveur) du servlet vers page jsp:
		rd.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
