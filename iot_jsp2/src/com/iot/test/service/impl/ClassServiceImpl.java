package com.iot.test.service.impl;

import java.util.List;

import com.iot.test.dao.ClassDao;
import com.iot.test.dao.impl.ClassDaoImpl;
import com.iot.test.service.ClassService;
import com.iot.test.vo.ClassInfo;

public class ClassServiceImpl implements ClassService{
	private ClassDao cdao = new ClassDaoImpl();
	@Override
	public List<ClassInfo> getClassList() {
		return cdao.selectClassList();
	}

}
