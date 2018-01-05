package com.iot.test.dao;

import java.util.List;

import com.iot.test.vo.ClassInfo;

public interface ClassDao {
	List<ClassInfo> selectClassList();
}
