package com.iot.test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.iot.test.service.UserService;
import com.iot.test.service.impl.UserServiceImpl;
import com.iot.test.vo.UserClass;

public class UserServlet extends HttpServlet {
	UserService us = new UserServiceImpl();
	Gson gs = new Gson();
	public String getCommand(String uri) {
		int idx = uri.lastIndexOf("/");
		if (idx != -1) {			
			return uri.substring(idx+1);
		}
		return "";
	}

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		doProcess(req, res);
	}

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		doProcess(req, res);
	}

	public void doProcess(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
	
		PrintWriter out =res.getWriter();
		String uri = req.getRequestURI();
		System.out.println("uri?? "+ uri);
		String cmd = getCommand(uri);
		System.out.println("들어와??");
		System.out.println(cmd);
		if(cmd.equals("login")) {
			
			HashMap<String, Object> hm = us.login(req);
			
			out.println(gs.toJson(hm));
		}else if(cmd.equals("logout")) {
			us.logout(req);
			RequestDispatcher rd= req.getRequestDispatcher("/view/user/login");
			rd.forward(req, res);
		}else if(cmd.equals("signin")) {
			System.out.println("들어왓어?가입??");
			us.signin(req);
			out.println(req.getAttribute("resStr"));
			//System.out.println(uc);
			//out.println(gs.toJson(uc));
		}else if(cmd.equals("list")) {
			ArrayList<UserClass> userList = us.getUserList();
			out.println(gs.toJson(userList));
		}else if(cmd.equals("delete")) {
			out.println(us.deleteUser(req));
		}else if(cmd.equals("update")) {
			out.println(us.updateUsesr(req));
		}
	}
}
