package com.iot.test.dao;

import java.util.ArrayList;

import com.iot.test.vo.UserClass;

public interface UserDao {
	ArrayList<UserClass> selectUserList();
	UserClass selectUser(int uiNo);
	UserClass selectUser(String uiId);
	int signinUser(UserClass uc);
	int updateUser(UserClass uc);
	int deleteUSer(UserClass uc);
}
