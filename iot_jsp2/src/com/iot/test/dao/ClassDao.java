package com.iot.test.dao;

import java.util.ArrayList;
import java.util.List;

import com.iot.test.vo.ClassInfo;
import com.iot.test.vo.UserClass;

public interface ClassDao {
	List<ClassInfo> selectClassList();
	ClassInfo selectClass(int ciNo);

	int updateClass(ClassInfo ci);
	int deleteClass(ClassInfo ci);
	int insertClass(ClassInfo ci);
}
