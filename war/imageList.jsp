<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter,net.sf.json.JSONObject,net.sf.json.JSONArray" %>

<%
	JSONArray array = new JSONArray();
	JSONObject object = new JSONObject();
	String callBack = request.getParameter("GNCallBack");
	String address ="http://gntestserver.appspot.com";
	String contextPath = request.getContextPath();
	String rootContext = address+contextPath;
	PrintWriter output = response.getWriter();
	output.write(callBack +"(");
	
	object.put("seq", "1");
	object.put("image", rootContext+"/Image/ev01.png");
	array.add(object);
	object.put("seq", "2");
	object.put("image", rootContext+"/Image/ev02.png");
	array.add(object);
	object.put("seq", "3");
	object.put("image", rootContext+"/Image/ev03.png");
	array.add(object);
	object.put("seq", "4");
	object.put("image", rootContext+"/Image/ev04.png");
	array.add(object);
	object.put("seq", "5");
	object.put("image", rootContext+"/Image/ev05.png");
	array.add(object);
	object.put("seq", "6");
	object.put("image", rootContext+"/Image/ev06.png");
	array.add(object);
	
	output.print(array);
	output.write(")");
%>

