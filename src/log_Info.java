

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class log_Info
 */
@WebServlet("/log_Info")
public class log_Info extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String str="노인욱";
		Connection conn=null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
			
				String url = "jdbc:oracle:thin:@192.168.0.16:1521:orcl"; // localhost에 아이피주소, 1521은 포트번호 orcl은 뭐였더라..
				try {
					// 드라이버 로드
					Class.forName("oracle.jdbc.driver.OracleDriver"); // 접속할 데이터베이스의 드라이버를 메모리에 로드
					// 상위 패키지명.하위패키지명..OracleDriver(드라이버클래스명) => oracle6압축파일 내부의 드라이버경로

					// 연결객체 얻어오기
					conn = DriverManager.getConnection(url, "Scott", "tiger"); // 1접속할 컴퓨터위치 2접속할 계정명 3암호

					System.out.println("접속? :" + conn); // 그냥 확인용
					
					String id=request.getParameter("log_id");
					String pass = request.getParameter("log_pass");
					
					ps = conn.prepareStatement("select id,name from user where id=? and pass=?"); 
					ps.setString(1,id);
					ps.setString(2, pass);
					rs = ps.executeQuery();
					rs.next();
					
					out.println("<table border='1'>"
							+"<tr>"
							+"<td>"
							+ "회원명" 
							+"</td><td>"
							+ rs.getString(2)
							+ "</td></tr><tr><td>아이디</td><td>" 
							+ rs.getString(1)
							+"</td></tr>"
							+ "</table>");
					if(rs!=null)
					rs.close();
					if(ps!=null)
					ps.close();
					if(conn!=null)
					conn.close();
					
					
				} catch (Exception e) {
					out.println("arlet(아이디 정보가 없습니다.)");
					
			}
				
				
		
		
		
	}

}
