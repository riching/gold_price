<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="me.riching.goldprice.service.GoldPriceCrawlerService"%>
<%@page import="me.riching.goldprice.model.GoldPrice"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	font: 宋体;
	font-family: 宋体;
}
</style>
</head>
<body>
	<%
		out.println("test");
		ServletContext servletContext = request.getSession().getServletContext();
		WebApplicationContext context = WebApplicationContextUtils.getRequiredWebApplicationContext(servletContext);
		GoldPriceCrawlerService priceService = context.getBean(GoldPriceCrawlerService.class);
		/* out.println(priceService);
		double price = 600;
		for (int i = 0; i < 10; i++) {
			priceService.saveAndAnalysisPrice(price + i * 0.1d);
		} */
		GoldPrice gp = new GoldPrice();
		gp.setPrice(100.2d);
		priceService.testTranscation(gp);
	%>
</body>
</html>