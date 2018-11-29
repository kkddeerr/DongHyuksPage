<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="org.springframework.security.core.Authentication" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.userdetails.UserDetailsService" %>
<%@ page import="org.springframework.security.core.userdetails.UserDetails" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
</head>
<body>
<h1>액세스 거부</h1>
액세스가 거부되었습니다.
<%

	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	out.println(auth);
	/*
	Object principal = auth.getPrincipal();
	if(principal instanceof UserDetails) {
		String username = ((UserDetails) principal).getUsername();
		String password = ((UserDetails) principal).getPassword();
		out.println("Accuount : " + username.toString() + "<br>");
		out.println("Accuount : " + password.toString() + "<br>");
	} else {
		System.out.println("뭐가 널2" + principal);
	}
	*/
	

%>


</body>
</html>
