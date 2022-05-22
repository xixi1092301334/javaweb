
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<%@
        include file="header.jsp"
%>
<body>
<%@
        include file="top.jsp"
%>
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">新增商户</h5>
            <a type="button" class="close" data-dismiss="modal" aria-label="Close" href="admin_index.jsp">
                <span aria-hidden="true">&times;</span>
            </a>
        </div>
        <div class="modal-body">
            <div class="register-form">
                <form method="post" action="${pageContext.request.contextPath}/admin?method=NewMerchant">
                    <div class="fields-grid">
                        <div class="styled-input">
                            <input type="text" placeholder="商户账号" name="merchantname" required="">
                        </div>
                        <div class="styled-input">
                            <input type="password" placeholder="密码" name="password" required="">
                        </div>
                        <div class="styled-input">
                            <input type="text" placeholder="商户名称" name="name" required="">
                        </div>
                        <c:if test="${msg!=null}">
                            <div class="form-group">
                                <div class="col-sm-6">
                                    <span style="color:red">${msg}</span>
                                </div>
                            </div>
                        </c:if>
                        <button type="submit" class="btn subscrib-btnn">提交</button>
                    </div>
                </form>
            </div>
        </div>
        <div class="modal-footer">
            <a type="button" class="btn btn-secondary" data-dismiss="modal" href="admin_index.jsp">返回</a>
        </div>
    </div>
</div>
</body>
</html>
