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
	object.put("name", "Bulbasaur");
	object.put("image", rootContext+"/Image/001.png");
	object.put("content", "For some time after its birth, it grows by gaining nourishment from the seed on its back.");
	array.add(object);
	object.put("seq", "4");
	object.put("name", "Charmander");
	object.put("image", rootContext+"/Image/004.png");
	object.put("content","The fire on the tip of its tail is a measure of its life. If healthy, its tail burns intensely.");
	array.add(object);
	object.put("seq", "7");
	object.put("name", "Squirtle");
	object.put("image", rootContext+"/Image/007.png");
	object.put("content","It shelters itself in its shell, then strikes back with spouts of water at every opportunity.");
	array.add(object);
	object.put("seq", "16");
	object.put("name", "Pidgey");
	object.put("image", rootContext+"/Image/016.png");
	object.put("content","It is docile and prefers to avoid conflict. If disturbed, however, it can ferociously strike back.");
	array.add(object);
	object.put("seq", "55");
	object.put("name", "Golduck");
	object.put("image", rootContext+"/Image/055.png");
	object.put("content","When its forehead shines mysteriously, Golduck can use the full extent of its power.");
	array.add(object);
	object.put("seq", "131");
	object.put("name", "Lapras");
	object.put("image", rootContext+"/Image/131.png");
	object.put("content","It loves crossing the sea with people and Pokemon on its back. It understands human speech.");
	
	array.add(object);
	output.print(array);
	output.write(")");
%>

