<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>TEST PAGE</title>
</head>
<script type="text/javaScript" language="javascript" defer="defer">
	
</script>
<body style="text-align: center; margin: 0 auto; display: inline; padding-top: 100px;">
	<form:form commandName="searchVO" id="listForm" name="listForm"
		method="post">
		<!-- List -->
		<div id="table">
			TEST DETAIL TABLE <br>
			<table width="100%" border="1" cellpadding="0" cellspacing="0">
				<colgroup>
					<col width="100" />
					<col width="150" />
					<col width="80" />
					<col width="80" />
					<col width="80" />
					<col width="80" />
					<col width="80" />
				</colgroup>
				<tr>
					<th align="center">코드</th>
					<th align="center">제목</th>
					<th align="center">작성자</th>
					<th align="center">작성일</th>
					<th align="center">내용</th>
					<th align="center">첨부파일</th>

				</tr>
				<c:forEach var="result" items="${resultList}" varStatus="status">
					<tr>
						<td align="center" class="listtd"><c:out
								value="${result.code}" />&nbsp;</td>
						<td align="center" class="listtd"><c:out
								value="${result.title}" />&nbsp;</td>
						<td align="center" class="listtd"><c:out
								value="${result.name}" />&nbsp;</td>
						<td align="center" class="listtd"><c:out
								value="${result.createDate}" />&nbsp;</td>
						<td align="center" class="listtd"><c:out
								value="${result.content}" />&nbsp;</td>
						<td align="center" class="listtd"><c:out
								value="${result.fileName}" />&nbsp;</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<!-- /List -->

	</form:form>
</body>
</html>