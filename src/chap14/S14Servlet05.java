package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import chap14.javaBeans.*;
/**
 * Servlet implementation class S14Servlet05
 */
@WebServlet("/S14Servlet05")
public class S14Servlet05 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet05() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT CustomerName, Country, City, PostalCode FROM Customers WHERE CustomerID = 3";
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		// 조회결과 정제
		try (
			Connection con = ds.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);) {
			
			if (rs.next()) {
				// 자바빈 이용하여 출력하기
				Customer customer = new Customer();
				
				String name = rs.getString("CustomerName");
				String country = rs.getString("country");
				String city = rs.getString("city");
				String postalCode = rs.getString(4);
				
				customer.setName(name);
				customer.setCountry(country);
				customer.setCity(city);
				customer.setPostalCode(postalCode);
				
				request.setAttribute("customer", customer);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		String path = "WEB-INF/view/chap14/ex03.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
