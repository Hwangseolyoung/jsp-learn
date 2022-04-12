package chap09;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Map;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

// 책 222
public class Cookies {
	
	// 쿠키를 배열에 담아 for을 돌려야했는데 
	// jsp 코드가 복잡해지므로 맵에 쿠키를 모아두는 코드
	private Map<String, Cookie> cookieMap = new java.util.HashMap<String, Cookie>();
	
	public Cookies(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null) {
			for(int i = 0; i < cookies.length; i++) {
				cookieMap.put(cookies[i].getName(), cookies[i]);
			}
		}
	}
	
	// 맵에서 바로 String으로 쿠키 꺼내기
	public Cookie getCookie(String name) {
		return cookieMap.get(name);
	}
	
	// 쿠키 맵에서 이름으로 해당 쿠키가 있으면 value값 가져오기 ex08.jsp
	public String getValue(String name) throws IOException {
		Cookie cookie = cookieMap.get(name);
		if(cookie == null) {
			return null;
		}
	return URLDecoder.decode(cookie.getValue(), "utf-8");
	}
	
	// 쿠키 이름으로 쿠키가 있는지 없는지 리턴하는 메소드 ex08.jsp
	public boolean exists(String name) {
		return cookieMap.get(name) != null;
	}
	
	// 쿠키 value값에 한글도 입력 할 수 있도록 ex07.jsp
	public static Cookie createCookie(String name, String value) throws IOException {
		return new Cookie(name, URLEncoder.encode(value, "utf-8"));
	}
	
	// 쿠키의 이름, 벨류 경로 등을 받아서 만드는 메소드
	public static Cookie createCookie(String name, String value, String path, int maxAge) throws IOException {
		Cookie cookie = new Cookie(name, URLEncoder.encode(value, "utf-8"));
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		
		return cookie;
	}
	
	// 쿠키의 이름, 벨류, 도메인, 경로 등을 받아서 만드는 메소드
	public static Cookie createCookie(String name, String value, String domain, String path, int maxAge) throws IOException {
		Cookie cookie = new Cookie(name, URLEncoder.encode(value, "utf-8"));
		cookie.setDomain(domain);
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		
		return cookie;
	}
	
	
	

}
