package com.iot.test.utils;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;

public class DBUtil {
	public static void close(ResultSet rs) {
		try {
			if(rs!=null) {
			rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public static void close(Connection con) {
		try {
			if(con!=null) {
			con.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(PreparedStatement ps) {
		try {
			if(ps!=null) {
			ps.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
