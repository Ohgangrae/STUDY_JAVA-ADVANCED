package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class BoardDAO {
	
	public ArrayList<BoardDTO> getList()
	throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM board";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<BoardDTO> products = new ArrayList<BoardDTO>();
			
			while(rs.next()) {
				boards.add(new BoardDTO(rs.getString("bid"),
											rs.getString("btitle"),
											rs.getString("bcontent"),
											rs.getString("buser"),
											rs.getString("bdate")));
			}
			return boards;
			
			
		}finally {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	}
	
	public ProductDTO getDetail(String pid) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM board WHERE pid = ?";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, pid);
			rs = pstmt.executeQuery();
			
			rs.next();
			
			String id = rs.getString(1);
			String btitle = rs.getString(2);
			String bcontent = rs.getString(3);
			String buser = rs.getString(4);
			String bdate = rs.getString(5);
			
			ProductDTO board = new BoardDTO(id, btitle, bcontent, buser, bdate);
			
			return board;
	}finally {
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
	}
	

}
}
