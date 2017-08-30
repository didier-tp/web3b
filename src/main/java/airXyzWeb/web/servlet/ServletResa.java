package airXyzWeb.web.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

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
		String suite="statut_resa.jsp";
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
		if(sDate!=null){
			//System.out.println("sDate:"+sDate);
			SimpleDateFormat df1= new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat df2= new SimpleDateFormat("yyyy-MM-dd");
			try {
				df1.parse(sDate);
			} catch (ParseException e1) {
				try{
					df2.parse(sDate);
				}
				catch (ParseException e2) {
				     suite="param_resa.jsp";
				    //+ message + value="${resa.xxx}" dans param_resa.jsp
				    request.setAttribute("errMsg", "date invalide (pas dd/MM/yyyy ni yyyy-MM-dd)");
				}
			}
			
		}
		
		RequestDispatcher rd = this.getServletContext()
				.getRequestDispatcher("/" + suite);
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
