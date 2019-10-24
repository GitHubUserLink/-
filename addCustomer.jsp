<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
    <%@  page import="java.sql.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
String username_register = request.getParameter("username"); 
String pwd_register  =   request.getParameter("password"); 
String em_register  =   request.getParameter("Email");
String usex_register  =   request.getParameter("sex");
String uno_register  =   request.getParameter("number");
															%>

<%
    //客户信息在数据库的验证
    
    String url = "jdbc:mysql://localhost:3306/customer";
    String name ="root";
    String password ="root";
    Class.forName("com.mysql.jdbc.Driver");//加载驱动类       
    Connection conn=null;
    conn =DriverManager.getConnection(url,name,password);
     if(conn!=null){
    	 out.print("与数据库连接成功");
     }
     //向Mysql送sql语句,并接受mysql的处理结果
     PreparedStatement pst=null; //修改、删除、添加用PreparedStatement声明对象
     String sql="INSERT INTO customerSystem(name,password,Email,sex,number) " 
             +"VALUES (?,?,?,?,?)" ;
     pst=conn.prepareStatement(sql);    
     pst.setString(1, username_register);//对sql的第一个问号赋值
     pst.setString(2, pwd_register);
     pst.setString(3, em_register);
     pst.setString(4, usex_register);
     pst.setString(5, uno_register);//对sql的第二个问号赋值
     
     int i=0;
     i = pst.executeUpdate(); //修改、删除、添加用executeUpdate执行SQL语句,并返回结果
     
     if(i==1){
    	 response.sendRedirect("login.html");
     }
     else{
    	 response.sendRedirect("register.html");
     }
     //关闭连接
     pst.close();
     conn.close();
     
%>
</body>
</html>