package com.iot.test.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.google.gson.Gson;
import com.iot.test.dao.ClassDao;
import com.iot.test.dao.UserDao;
import com.iot.test.dao.impl.ClassDaoImpl;
import com.iot.test.dao.impl.UserDaoImpl;
import com.iot.test.service.ClassService;
import com.iot.test.vo.ClassInfo;
import com.iot.test.vo.UserClass;

public class ClassServiceImpl implements ClassService{
	private Gson gs = new Gson();
	private ClassDao cdao = new ClassDaoImpl(); //ud
	@Override
	public List<ClassInfo> getClassList() {
		return cdao.selectClassList();
	}
	@Override
	public String deleteClass(HttpServletRequest req) {
		int ciNo = Integer.parseInt(req.getParameter("ciNo"));
		ClassInfo ci = new ClassInfo();
		ci.setCiNo(ciNo);
		int result = cdao.deleteClass(ci);
		Map<String,String> rm = new HashMap<String, String>();
		rm.put("result","no");
		rm.put("msg","삭제 실패");
		if(result==1) {			
			rm.put("result","ok");
			rm.put("msg","삭제 성공");			
		}
		return gs.toJson(rm);
	
		
	}
	@Override
	public String updateClass(HttpServletRequest req) {
		String json = req.getParameter("param");
		ClassInfo ci = gs.fromJson(json,ClassInfo.class);
		int result = cdao.updateClass(ci);
		Map<String,String> rm = new HashMap<String, String>();
		rm.put("result","no");
		rm.put("msg","수정실패");
		if(result==1) {
			rm.put("result","ok");
			rm.put("msg","수정성공");
		}
		return gs.toJson(rm);
	
	}
	@Override
	public void signin(HttpServletRequest req) {
		String json = req.getParameter("param");
		ClassInfo ci = gs.fromJson(json,ClassInfo.class);
		int result = cdao.insertClass(ci);
		Map<String,String> rm = new HashMap<String, String>();
		rm.put("result","no");
		rm.put("msg","추가 실패");
		if(result==1) {
			rm.put("result","ok");
			rm.put("msg","추가 성공");
		}
		req.setAttribute("resStr", gs.toJson(rm));
	}
		
	}


