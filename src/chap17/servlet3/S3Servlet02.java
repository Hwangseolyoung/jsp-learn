package chap17.servlet3;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class S3Servlet02
 */
/* @WebServlet("/S3Servlet02") */
public class S3Servlet02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// 만약 인스턴스 필드를 추가로 하나 만든다면
	// 상태나 값을 변경하면 안된다.(읽기만 가능)
	private final String field;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S3Servlet02() {
        super();
        // TODO Auto-generated constructor stub
        System.out.println("servlet class로 객체를 만드는 중...");
        // 하나의 인스턴스가 여러 요청을 동시에 처리한다. 
        // 생성자의 응답은 1번만 콘솔에 찍히고 여러 쓰레드를 처리한다.
        field = "three";
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("s3 servlet02 doGet 메소드 실행");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
