﻿<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script type="text/javascript">
// 메뉴 활성화
$(function(){
    var url = window.location.pathname;
    var urlRegExp = new RegExp(url.replace(/\/$/, '') + "$");
    
    try {
    	$('nav ul>li>a').each(function() {
    		if ( urlRegExp.test(this.href.replace(/\/$/, '')) ) {
    			$(this).addClass('active_menu');
    			return false;
    		}
    	});
    	if($('nav ul>li>a').hasClass("active_menu")) return false;

     	var parent = url.replace(/\/$/, '').substr(0, url.replace(/\/$/, '').lastIndexOf("/"));
     	if(! parent) parent = "/";
        var urlParentRegExp = new RegExp(parent);
    	$('nav ul>li>a').each(function() {
    		if($(this).attr("href")=="#") return true;
    		
    		var phref = this.href.replace(/\/$/, '').substr(0, this.href.replace(/\/$/, '').lastIndexOf("/"));
    		
    		if ( urlParentRegExp.test(phref) ) {
    			$(this).addClass('active_menu');
    			return false;
    		}
    	});
    	if($('nav ul>li>a').hasClass("active_menu")) return false;
    	
    	$('nav ul>.menu--item__has_sub_menu').each(function() {
    		if (urlRegExp.test(this.href.replace(/\/$/, '')) ) {
    			$(this).addClass('active_menu');
    			return false;
    		}
    	});
    	
    }catch(e) {
    }
});

$(function(){
	$('nav ul>.menu--item__has_sub_menu ul>li>a').each(function() {
		if($(this).hasClass('active_menu')) {
			$(this).closest(".menu--item__has_sub_menu").addClass('menu--subitens__opened');
			return false;
		}
	});
});
</script>

<nav class="vertical_nav" style="position: fixed;">
	<ul id="js-menu" class="menu">
		<li class="menu--item">
			<a href="${pageContext.request.contextPath}/admin" class="menu--link" title="Home">
				<i class="menu--icon bi bi-h-square"></i>
				<span class="menu--label">Home</span>
			</a>
		</li>
	
		<li class="menu--item">
	        <a href="<c:url value='/admin/memberManage/list'/>" class="menu--link" title="회원관리">
				<i class="menu--icon bi bi-person-square"></i>
				<span class="menu--label">회원관리</span>
			</a>
		</li>
	
		<li class="menu--item menu--item__has_sub_menu">
			<label class="menu--link" title="고객센터관리">
				<i class="menu--icon bi bi-question-square"></i>
				<span class="menu--label">고객센터관리</span>
			</label>
	
			<ul class="sub_menu">
				<li class="sub_menu--item">
					<a href="<c:url value='/admin/noticeManage/list'/>" class="sub_menu--link">공지사항</a>
				</li>
				<li class="sub_menu--item">
					<a href="<c:url value='/admin/inquiryManage/list'/>" class="sub_menu--link">1:1문의</a>
				</li>
			</ul>
		</li>
		
		<li class="menu--item menu--item__has_sub_menu">
			<label class="menu--link" title="통계">
				<i class="menu--icon bi bi-question-square"></i>
				<span class="menu--label">목차별 통계 확인</span>
			</label>
	
			<ul class="sub_menu">
				<li class="sub_menu--item">
					<a href="<c:url value='/admin/analysis/point'/>" class="sub_menu--link">포인트</a>
				</li>
				<li class="sub_menu--item">
					<a href="<c:url value='/admin/analysis/page'/>" class="sub_menu--link">게시물</a>
				</li>
				<li class="sub_menu--item">
					<a href="<c:url value='/admin/analysis/vip'/>" class="sub_menu--link">VIP</a>
				</li>
			</ul>
		</li>

	
		<li class="menu--item">
	        <a href="${pageContext.request.contextPath}/member/logout" class="menu--link" title="Logout">
				<i class="menu--icon bi bi-unlock"></i>
				<span class="menu--label">Logout</span>
			</a>
		</li>
	</ul>
	
	<button id="collapse_menu" class="collapse_menu">
		<i class="collapse_menu--icon bi bi-chevron-left"></i>
		<span class="menu--label">Menu</span>
	</button>	
</nav>