<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter,net.sf.json.JSONObject,net.sf.json.JSONArray" %>

<%
	JSONArray array = new JSONArray();
	JSONObject object = new JSONObject();
	String callBack = request.getParameter("GNCallBack");
	String seq = request.getParameter("seq");
	String address ="http://gntestserver.appspot.com";
	String contextPath = request.getContextPath();
	String rootContext = address+contextPath;
	PrintWriter output = response.getWriter();
	output.write(callBack +"(");
	
	object.put("seq", "1");
	object.put("name", "School1");
	object.put("xPoint","13");
	object.put("yPoint","20");
	object.put("content", "이곳은 13.20 의 지역입니다..");
	array.add(object);
	object.put("seq", "2");
	object.put("name", "School2");
	object.put("xPoint","53");
	object.put("yPoint","80");
	object.put("content", "이곳은 53.80 의 지역입니다..");
	array.add(object);
	object.put("seq", "3");
	object.put("name", "School3");
	object.put("xPoint","17");
	object.put("yPoint","100");
	object.put("content", "이곳은 17.100 의 지역입니다..");
	array.add(object);
	object.put("seq", "4");
	object.put("name", "School4");
	object.put("xPoint","80");
	object.put("yPoint","10");
	object.put("content", "이곳은 80.10 의 지역입니다..");
	array.add(object);
	object.put("seq", "5");
	object.put("name", "School5");
	object.put("xPoint","100");
	object.put("yPoint","120");
	object.put("content", "이곳은 100.120 의 지역입니다..");
	array.add(object);
	object.put("seq", "6");
	object.put("name", "School6");
	object.put("xPoint","223");
	object.put("yPoint","140");
	object.put("content", "이곳은 223.140 의 지역입니다..");
	array.add(object);
	
	
	array.add(object);
	
	if(seq!=null){
		output.print(array.get(Integer.parseInt(seq)-1));	
	}else{
		output.print(array);
	}
	output.write(")");
%>

