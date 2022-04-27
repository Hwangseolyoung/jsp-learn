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

import chap14.javaBeans.Employee;

/**
 * Servlet implementation class S14Servlet21
 */
@WebServlet("/S14Servlet21")
public class S14Servlet21 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet21() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String lastName = request.getParameter("lastName");
	    String firstName = request.getParameter("firstName");
		
		// null이면 빈스트링으로 채워주기
		if(lastName == null) {
	         lastName = "";
	      }
	      
	    if (firstName == null) {
	         firstName = "";
	      }

		
		// trim 앞뒤 공백 제거
	    lastName = lastName.trim();
	    firstName = firstName.trim();

		
		// 와일드카드 붙여주기
	    lastName = "%" + lastName + "%";
	    firstName = "%" + firstName + "%";
		
		String sql =  "SELECT EmployeeID, LastName, FirstName, BirthDate, Photo, Notes "
				+ "FROM Employees "
				+ "WHERE LastName LIKE ? "
				+ "OR FirstName LIKE ? "
				+ "ORDER BY EmployeeID ";
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		
		List<Employee> list = new ArrayList<>();
		
		try (Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);){
			
			// 1번째 ? 채워준다.
			pstmt.setString(1, lastName);
			
			// 2번째 ? 채워준다.
			pstmt.setString(2, firstName);
			
			try (ResultSet rs = pstmt.executeQuery();) {
				while (rs.next()) {
					Employee emp = new Employee();
					
					emp.setId(rs.getInt(1));
					emp.setLastName(rs.getString(2));
					emp.setFirstName(rs.getString(3));
					emp.setBirthDate(rs.getString(4));
					emp.setPhoto(rs.getString(5));
					emp.setNotes(rs.getString(6));
					
					list.add(emp);
				}
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("employeeList", list);
		
		String path = "/WEB-INF/view/chap14/ex15.jsp";
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
