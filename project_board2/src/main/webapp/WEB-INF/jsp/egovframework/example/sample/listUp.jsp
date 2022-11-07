<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="<c:url value='/css/bootstrap/css/bootstrap.min.css'/>">
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/css/bootstrap/js/bootstrap.min.js'/>"></script>
<title>Insert title here</title>
</head>
<script type="text/javaScript" language="javascript" defer="defer">
	/* pagination 페이지 링크 function */
	function fn_egov_link_page(pageNo) {
		document.listForm.pageIndex.value = pageNo;
		document.listForm.action = "<c:url value='/listUp.do'/>";
		document.listForm.submit();

	}
</script>
<body>

	<form:form commandName="searchVO" id="listForm" name="listForm"
		method="post">
		<div class="container">
			<h1>메인화면</h1>
			<div class="panel panel-default">
				<div class="panel-heading">
					<form class="form-inline" method="post" action="">
						<!-- 액션에서 데이터 서버로 보낼 경로 설정 -->
						<div class="form-group">
							<label for="searchName">검색(제목,내용):</label> <input type="text"
								class="form-control" id="serachName">
						</div>
						<button type="submit" class="btn btn-default">검색</button>
					</form>
				</div>

				<div class="panel-body">
					<form class="form-inline" action="/list.do"></form>
					<div class="table-responsive">
						<table class="table table-hover">
							<thead>

								<tr>
									<th align="center">게시물 번호</th>
									<th align="center">코드</th>
									<th align="center">제목</th>
									<th align="center">등록자</th>
									<th align="center">등록일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="result" items="${resultList}" varStatus="status">
									<tr>
										<td align="center" class="listtd"><c:out
												value="${result.rnum}" />&nbsp;</td>
										<td align="center" class="listtd"><a
											href="listDetail.do?code=<c:out value='${result.code}'/>"><c:out
													value="${result.code}" />&nbsp;</a></td>
										<td align="center" class="listtd"><c:out
												value="${result.title}" />&nbsp;</td>
										<td align="center" class="listtd"><c:out
												value="${result.name}" />&nbsp;</td>
										<td align="center" class="listtd"><c:out
												value="${result.createDate}" />&nbsp;</td>
									</tr>

								</c:forEach>
							</tbody>

						</table>
						<!-- 페이징 -->
						<div id="paging">
							<ui:pagination paginationInfo="${paginationInfo}" type="image"
								jsFunction="fn_egov_link_page" />
							<form:hidden path="pageIndex" />
						</div>
					</div>


				</div>

				<div class="panel-footer">
					<button type="button" class="btn btn-default" onclick="">등록</button>
				</div>
			</div>
		</div>

	</form:form>
</body>
</html>




