<%--
  Created by IntelliJ IDEA.
  User: H.Mr
  Date: 2023/7/30
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
    <style>
        table{
            width: 100%;
            border-collapse: collapse;
        }
        th,td{
            padding: 20px 0;
        }
        .scrollable {
            max-height: 200px;
            overflow-y: scroll;
            border: 1px solid #ccc;
            padding: 10px;
        }
    </style>
</head>
<body>
<hr/>
<div>
    <div style="width: 20%;height: 70px;display: inline-block">
        <img style="width: 90%" src="image/img.png" alt="加载失败">
    </div>
    <div style="width:79%;height: 70px;display: inline-block;">
        <div style="width:100%; height:40px;margin-top: 30px;background-color: cadetblue;display: inline-block">
            <div style="display: inline-block;float: left;margin-top: 10px"><span>用户注册</span></div>
            <div style="display: inline-block;float: right;margin-top: 10px"><a href="#">帮助</a></div>
        </div>
    </div>
</div>
<div style="width: 100%;height: 30px">
    <div style="float: right">
        <span>1、填写信息</span>
        <span>2、注册成功并激活空间</span>
    </div>
</div>
<div>
    <form>
        <table>
            <tr>
                <td style="width: 150px;">用户名：</td>
                <td>
                    <input type="text" id="username" name="username" required>只能输入字母或数字，4-16个字符
                </td>
            </tr>
            <tr>
                <td>密码：</td>
                <td>
                    <input type="password" id="password" name="password" required>密码长度6-12位
                </td>
            </tr>
            <tr>
                <td>确认密码：</td>
                <td>
                    <input type="password" id="confirm_password" name="confirm_password" required>
                </td>
            </tr>
            <tr>
                <td>性别：</td>
                <td>
                    <input type="radio" id="male" name="gender" value="male" required>
                    <label for="male">男</label>
                    <input type="radio" id="female" name="gender" value="female" required>
                    <label for="female">女</label>
                </td>
            </tr>
            <tr>
                <td>电子邮件地址：</td>
                <td>
                    <input type="email" id="email" name="email" required>输入正确的Email地址
                </td>
            </tr>
            <tr>
                <td>出生年月：</td>
                <td>
                    <input type="date" id="birthdate" name="birthdate" required>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <input style="width: 250px" type="submit" value="同意以下协议条款并提交">
                </td>
            </tr>
        </table>
        <div class="scrollable">
            <p>协议内容</p>
            <p>欢迎您使用我们的服务！在使用之前，请仔细阅读以下协议：</p>
            <p>第一条：用户在使用本服务前，应详细阅读并同意本协议。</p>
            <p>第二条：用户同意提供准确、完整的个人信息，并对其个人信息的真实性负责。</p>
            <p>第三条：用户需妥善保管自己的账号和密码，对于利用账号进行的一切行为承担责任。</p>
            <p>第四条：服务提供方将采取合理措施保护用户的个人信息和隐私。</p>
            <p>第五条：用户在使用过程中不得发布违法、不良信息，不得干扰、破坏正常运行。</p>
            <p>第六条：协议一旦发生变更，将在平台上发布更新版本，用户继续使用即视为同意新协议。</p>
            <p>请用户在使用之前仔细阅读协议内容，如有任何疑问，请联系我们。</p></div>
    </form>
</div>
</body>
</html>
