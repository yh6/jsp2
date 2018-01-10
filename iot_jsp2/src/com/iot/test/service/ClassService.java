package com.iot.test.service;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.iot.test.vo.ClassInfo;


public interface ClassService {
	// List<ClassInfo> getClassList();
	public List<ClassInfo> getClassList();
	public String insertClass(HttpServletRequest req);
	public String deleteClass(HttpServletRequest req);
	public String updateClass(HttpServletRequest req);

	
}
