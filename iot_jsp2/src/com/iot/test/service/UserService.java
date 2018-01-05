package com.iot.test.service;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

public interface UserService {
	public HashMap<String, Object> login(HttpServletRequest req);
	public void logout(HttpServletRequest req);
}
