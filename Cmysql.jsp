<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name=request.getParameter("username"); 
	String pwd=request.getParameter("password");
	String em=request.getParameter("Email");
	String usex=request.getParameter("sex");
	String uno=request.getParameter("number");
	

	String url= "jdbc:mysql://localhost:3306/customer";
	Class.forName("com.mysql.jdbc.Driver");
	String username="root";
	String password="root";
	
	Connection conn =null;
	conn =DriverManager.getConnection(url,username,password);
	if(conn!=null){
		out.print("数据库连接成功");
		
	}
	else{
		out.print("数据库连接失败");
		
	}
	Statement st=null;
	st=conn.createStatement();
	
	
	ResultSet rs=null;
	rs=st.executeQuery("select *from customerSystem where name='"+name+"'and'"+pwd+"'");
	//while(rs.next()){
	//游标指向返回的结果
	//out.print(rs.getString(1));//输出获得表格的第一列
	//out.print(rs.getString(2));
	//}
	if(rs.next()){
		response.sendRedirect("http://localhost:8010/test/index.html");		
	}
	else{
		
		response.sendRedirect("http://localhost:8010/test/login.html");
	}
%>
</body>
</html>