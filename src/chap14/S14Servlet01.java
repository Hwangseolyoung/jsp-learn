package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.apache.catalina.tribes.transport.DataSender;

/**
 * Servlet implementation class S14Servlet01
 */
@WebServlet("/S14Servlet01")
public class S14Servlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet01() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ServletContext 상위 클래스로 application 상속
		ServletContext application = getServletContext();
		
		// DB에 city 리스트에 담아 
		List<String> cities = new ArrayList<>();
		
		// database에서 records 가져오기
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		
		String sql = "SELECT city FROM Customers";
		
		try ( // 5. 자원닫기 try(둥근괄호) 닫을 자원을 둥근괄호 안에 넣어주면 .close()메소드와 같은 일을 한다.
				// 1.연결설정(JDBCListener에 설정함)
				Connection con = ds.getConnection();
				// 2.statement 객체 생성
				Statement stmt = con.createStatement();
				
				// 3.쿼리 실행
				// ResultSet : 쿼리를 실행한 결과 객채를 받는다. 
				ResultSet rs = stmt.executeQuery(sql);) {
				
			// 4. 실행결과 정제
			// ResultSet 메소드 next() 첫번째 행 이전 : 현재 위치에서 다음위치로 row 커서(행을 가르킴)를 옮긴다. 
			while (rs.next()) {
				// getString(얻어올 컬럼을 순서를 int로 입력하면됨) : String 형식의 데이터를 얻어온다.
				String city = rs.getString(1);
//				System.out.println(city);
				cities.add(city);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		/*
		rs.close();
		stmt.close();
		con.close();
		*/
		
		/*
		List<String> cities = new ArrayList<>();
		cities.add("Berlin");
		cities.add("London");
		cities.add("Madrid");
		*/
		
		// request에 records 넣기
		request.setAttribute("cities", cities);
		
		// jsp로 forward
		String location = "/WEB-INF/view/chap14/ex01.jsp";
		request.getRequestDispatcher(location).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
