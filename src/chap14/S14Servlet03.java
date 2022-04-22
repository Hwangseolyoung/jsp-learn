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

/**
 * Servlet implementation class S14Servlet03
 */
@WebServlet("/S14Servlet03")
public class S14Servlet03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet03() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT CustomerName, Country, City, Address, PostalCode FROM Customers WHERE CustomerID = 1";
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		
		try (
				Connection con = ds.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);) {
			
			if(rs.next()) {
				// getString(1); 안에 int는 위 String sql에 작성된 순서대로 넣어준다.
				// getString(String column명 입력);
				String name = rs.getString(1);
				String country = rs.getString(2);
				String city = rs.getString(3);
				String address = rs.getString(4);
				String postalCode = rs.getString(5);
				
//				System.out.println(name);
//				System.out.println(country);
				
				// 같은 request객체를 사용하고 있으므로 request 객체에 담아준다.
				// 웹브라우저에 출력할 수 있도록 담아주기
				request.setAttribute("name", name);
				request.setAttribute("country", country);
				request.setAttribute("city", city);
				request.setAttribute("address", address);
				request.setAttribute("postalCode", postalCode);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 웹브라우저에 출력하기
		String path = "/WEB-INF/view/chap14/ex02.jsp";
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
