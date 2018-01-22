package DB;

import java.sql.*;
import java.util.*;
public class border_search {
	
	
	String str="노인욱";
	Connection conn=null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	String sql=null;
		public border_search(String select,String tex){
			
			String url = "jdbc:oracle:thin:@192.168.0.16:1521:orcl"; // localhost에 아이피주소, 1521은 포트번호 orcl은 뭐였더라..
			try {
				// 드라이버 로드
				Class.forName("oracle.jdbc.driver.OracleDriver"); // 접속할 데이터베이스의 드라이버를 메모리에 로드
				// 상위 패키지명.하위패키지명..OracleDriver(드라이버클래스명) => oracle6압축파일 내부의 드라이버경로

				// 연결객체 얻어오기
				conn = DriverManager.getConnection(url, "Scott", "tiger"); // 1접속할 컴퓨터위치 2접속할 계정명 3암호

				System.out.println("접속? :" + conn); // 그냥 확인용
				
				sql="select * from border where ? like '%?%' "; 
																	//와일드카드 사용
				
				
				ps = conn.prepareStatement(sql);
				ps.setString(1, select);
				ps.setString(2, tex);
				
				
				rs=ps.executeQuery();
				
				
			} catch (Exception e) {
				System.out.println("접속실패");
		}
			
		}
			
		}

