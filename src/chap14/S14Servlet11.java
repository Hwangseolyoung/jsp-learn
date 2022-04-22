package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import chap14.javaBeans.Customer;

/**
 * Servlet implementation class S14Servlet11
 */
@WebServlet("/S14Servlet11")
public class S14Servlet11 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet11() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// SQL injectiond을 방지하는 쿼리문 작성 ?로 입력받는다는 표시만 해둔다.
		String sql = "SELECT CustomerName, Country, City, PostalCode FROM Customers WHERE City = ?";
		List<Customer> list = new ArrayList<>();
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute(sql);
		
		String param = request.getParameter("city");
		
		// PreparedStatement : ? 쿼리를 실행시키기 위해 사용하는 코드
		// String 타입을 리턴받는데 (sql) 쿼리를 넣어주면된다. 
		try (Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			// setStrig(1, param) : ?에 어떤 값을 넣어줄지 명시해주면 된다. 
			// ?의 갯수는 1개이상 가질 수 있고, ?의 갯수에 따라 수는 변경된다.
			pstmt.setString(1, param);
			
		
			try (ResultSet rs = pstmt.executeQuery()) {
				while (rs.next()) {
					Customer c = new Customer();
					c.setName(rs.getString(1));
					c.setCountry(rs.getString(2));
					c.setCity(rs.getString(3));
					c.setPostalCode(rs.getString(4));
					
					list.add(c);
				}
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("customers", list);
		
		String path = "/WEB-INF/view/chap14/ex05.jsp";
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
