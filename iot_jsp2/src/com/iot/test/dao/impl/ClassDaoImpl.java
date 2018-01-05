package com.iot.test.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.iot.test.common.DBCon;
import com.iot.test.dao.ClassDao;
import com.iot.test.vo.ClassInfo;
import com.iot.test.vo.UserClass;

public class ClassDaoImpl implements ClassDao{

	@Override
	public List<ClassInfo> selectClassList() {
		List<ClassInfo> classList = new ArrayList<ClassInfo>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = DBCon.getCon();
			String sql = "select * from class_info";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				ClassInfo ci = new ClassInfo();
				ci.setCiNo(rs.getInt("cino"));
				ci.setCiName(rs.getString("ciname"));
				ci.setCiDesc(rs.getString("cidesc"));
				classList.add(ci);			
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if(rs!=null) {
				
			}
		}

		return classList;
	}

}
