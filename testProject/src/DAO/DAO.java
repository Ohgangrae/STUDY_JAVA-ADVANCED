package DAO;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import DTO.DTO;
import util.ConnectionPool;

public class DAO {
	public boolean insert(String uid, String ucon) throws NamingException,SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			String sql="INSERT INTO feed(id,content) VALUES(?,?,?,?,?)";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, num);
				pstmt.setString(2, depart);
				pstmt.setString(3, name);
				pstmt.setString(4, address);
				pstmt.setString(5, phone);
			int count = pstmt.executeUpdate(); // 정보가 넘어오지는 않지만 성공과 실패가 0 과 1로 넘어온다
			return (count>0) ? true : false;
		}finally {
			if(pstmt !=null) pstmt.close();
			if(conn !=null) conn.close();
		}
	}
	
	public ArrayList<DTO> getList() throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql="SELECT * FROM feed ORDER BY ts DESC";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<DTO> feeds = new ArrayList<DTO>();
		
			while(rs.next()) {
				feeds.add(new DTO(rs.getString("num"),
									  rs.getString("depart"),
									  rs.getString("name"),
									  rs.getString("adress"),
									  rs.getString("phone")));
			}
			return feeds;
	} finally {
		if(rs !=null) rs.close();
		if(pstmt !=null) pstmt.close();
		if(conn !=null) conn.close();
	}
}
}
