<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%--
<fmt:setLocale value="ru"/>
<fmt:setBundle basename="messages.app"/>
--%>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">

        <c:url value="/meals" var="meals"/>
        <a href="${meals}" class="navbar-brand"><fmt:message key="app.title"/></a>

        <div class="collapse navbar-collapse">
            <form class="navbar-form navbar-right">
                <sec:authorize access="isAuthenticated()">
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                        <c:url value="/users" var="users"/>
                        <a class="btn btn-info" role="button" href="${users}"><fmt:message key="users.title"/></a>
                    </sec:authorize>
                    <c:url value="/profile" var="profile"/>
                    <a class="btn btn-info" role="button" href="${profile}">${userTo.name} profile</a>
                    <c:url value="/logout" var="logout"/>
                    <a class="btn btn-primary" role="button" href="${logout}">Logout</a>
                </sec:authorize>
            </form>
        </div>
    </div>
</div>
