<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
    <%@  page import="java.sql.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
        <meta charset="utf-8">
        <title>用户注册</title>
      <link type="text/css" rel="stylesheet" href="css/base.css" /> 
    </head>
    <body   >
    <div id="siteNav">
      <div id="siteNavCon">
        <ul class="left">
          <li>
            <a href="#">欢迎来到MobileShop</a>
          </li>
          <li>
            <a href="login.html" class="red">登录</a>
          </li>
           <li>
            <a href="#">免费注册</a>
          </li>
        </ul>
        <ul class="right">
          <li><a href="#">我的MobileShop</a></li>
          <li><a href="#">购物车</a></li>
          <li><a href="#">收藏夹</a></li>
          <li><a href="#">商品分类</a></li>
        </ul>
      </div>
    </div>
    
     <div id="content" style="background:#fff;  padding:20px;"> 
                <div style="width:400px;">
  <form action="addCustomer.jsp" method="post">
   <fieldset >
     <legend>用户注册表单</legend>
     <label>
      用户名： <input type="text" placeholder="请输入用户名"  required="required"  maxlength="16"onblur="fun1()"id="user"name="username" >
     </label>
     <br/> <br/>
     <label>
      邮箱： <input type="email" placeholder="请输入正确的邮箱"  required="required" onblur="fun4()"id="em" maxlength="23" name="Email" >
     </label>
     <br/> <br/>
      <label>
      密  码： <input type="password" id="pw1"maxlength="16"placeholder="只能字母和数字"value=""onblur="fun2()"name="password">
     </label>
     <br/> <br/>
      <label>
      确认密码： <input type="password" id="pw2"maxlength="16"placeholder="与密码一致" onkeyup="fun3()"id="tishi"  >
      </label>
      <br/> <br/>
      <label>
      手机号码：<input type="text" maxlength="11"id="hm"onblur="fun5()" name="number" />
      </label>
      <br/> <br/>
      <label>
    性别： <input type="radio"id="man1" value="1"name="sex" />
                        <label for="man1">男</label>
                        <input type="radio" id="man2" value="0"name="sex"  />
                        <label for="man2">女</label></td></tr>
      </label>
      <br/> <br/>
      <input type="checkbox" checked/>我已看过并接受<a href="front/userNotice.html" class="red">《用户协议》</a>
      <input type="submit"  value="提交"  name="submitBtn">
   </fieldset>
  </form>
                </div>
              
     </div>

       <div id="footer" >
        <div id="footerCon">
          <div id="links">
                <dl>
                <dt>用户指南</dt>
                <dd><a href="front/guide.html">新手指南</a></dd>
                <dd><a href="front/memberLevel.html">会员积分</a></dd>
                <dd><a href="#">常见问题</a></dd>
                <dd><a href="front/feedback.html">反馈调查</a></dd>
                </dl>  
                 
                <dl>
                <dt>品牌服务</dt>
                <dd><a href="#">闪电配送</a></dd>
                <dd><a href="#">快捷支付</a></dd>
                <dd><a href="#">售后保障</a></dd>
                </dl>

                <dl>
                <dt>商家合作</dt>
                <dd><a href="#">商家对接</a></dd>
                <dd><a href="#">品牌资质</a></dd>
                <dd><a href="#">进场流程</a></dd>
                </dl>

                <dl>
                <dt>关于我们</dt>
                <dd><a href="#">平台简介</a></dd>
                <dd><a href="#">企业文化</a></dd>
                <dd><a href="#">经营模式</a></dd>
                <dd><a href="#">招贤纳士</a></dd>
                </dl>
                
             </div>
             <div id="otherLinks">
               <a href="front/aboutUs.html">关于我们</a>|
               <a href="front/guide.html">购物指南</a>|
               <a href="#">商家合作</a>|
               <a href="#">联系我们</a>|
               <a href="#">招贤纳士</a>|
               <a href="front/feedback.html">反馈调查</a>
             </div>
             <div id="copyRight">
               Copyright &copy;2016 - 2026 MobileShop 版权所有 | 消费者维权热线：40088888888
             </div>
          </div>
       </div>
       <script>
    function  fun1(){
        var usernum=document.getElementById("user").value;
        var registerUser=/^(?![0-9]*$)(?![a-z][A-Z]*$)[0-9a-zA-Z]*$/;
        result=registerUser.test(usernum);
        if(!result){
            alert("请输入正确的用户名")
        }

    }
    function  fun2(){
        var password=document.getElementById("pw1").value;
        var repw=/^(?![0-9]*$)(?![a-z][A-Z]*$)[0-9a-zA-Z]*$/;
        result1=repw.test(password);
        if(!result1){
            alert("该密码不符合要求")
        }

    }
    function fun3() {
        var pw1 = document.getElementById("pw1").value;
        var pw2 = document.getElementById("pw2").value;
        if(pw1 == pw2) {
            document.getElementById("tishi").innerHTML="<font color='green'>两次密码相同</font>";
            document.getElementById("submit").disabled = false;
        }
        else {
            document.getElementById("tishi").innerHTML="<font color='red'>两次密码不相同</font>";
            document.getElementById("submit").disabled = true;
        }
    }
    function fun4(){
        var youxiang=document.getElementById("em").value.indexOf("@")
        submitOK="true"
        if (youxiang==-1)
        {
            alert("不是有效的电子邮件地址。")
            submitOK="false"
        }
        if (submitOK=="false")
        {
            return false
        }
    }
    function  fun5(){
        var shenfen=document.getElementById("hm").value;
        var sf=/^[0-9]*$/;
        result2=sf.test(shenfen);
        if(!result2){
            alert("请按要求输入")
        }

    }
    function  fun6(){
        var hm=document.getElementById("sex").value;
        var yzhm=/^[0-9]*$/;
        result3=yzhm.test(hm);
        if(!result3){
            alert("输入不符合要求")
        }

    }

</script>
    </body>
</html>