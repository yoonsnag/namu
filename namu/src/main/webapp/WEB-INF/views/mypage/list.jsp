<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>


.write-form .img-viewer {
	cursor: pointer;
	border: 1px solid #ccc;
	width: 45px;
	height: 45px;
	border-radius: 45px;
	background-image:
		url("${pageContext.request.contextPath}/resources/images/person.png");
	position: relative;
	z-index: 9999;
	background-repeat: no-repeat;
	background-size: cover;
}

.modal-dialog {
	max-width: 800px; /* 원하는 너비로 조정 */
}

.namuLevel {
	height: 50px;
	width: 50px;
}

.box {
	background: white;
	color: black;
	text-align: center;
	padding: 20px;
	margin: 10px;
	border-radius: 10px;
	border: 1px solid black;
}

.custom-margin-top {
	margin-top: -220px; /* 원하는 마이너스 마진 값 설정 */
}

.custom-margin-top2 {
	margin-top: -70px; /* 원하는 마이너스 마진 값 설정 */
}

.custom-margin-top3 {
	margin-top: 20px; /* 원하는 마이너스 마진 값 설정 */
}

.custom-margin-top4 {
	margin-top: 0px; /* 원하는 마이너스 마진 값 설정 */
}

.profileImage {
	width: 100%;
	height: 220px;
	border-radius: 100%;
}

.icons {
	width: 30px;
	height: 30px;
}

.btn-user {
	width: 50%;
	height: 100%;
	background: white;
	border: none;
	font-size: 20px;
	border-radius: 30px;
	border: 1px solid black;
}

.box1 {
	background: white;
	color: black;
	text-align: center;
	padding: 20px;
	margin: 10px;
	border-radius: 10px;
}

.box-3 {
	background: white;
	color: black;
	text-align: center;
	padding: 20px;
	margin: 10px;
}

.body-container {
	max-width: 800px;
}

.fleamarket-cover {
	background-color: #97d5ee;
	display: flex;
	align-items: center;
	justify-content: space-between;
	flex-wrap: wrap; /* Allow wrapping for smaller screens */
	padding: 16px;
}

h1 {
	display: block;
	font-size: 41px;
	margin-block-start: 0.67em;
	margin-block-end: 0.67em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
	unicode-bidi: isolate;
}

.htext {
	margin: 0; /* Reset margin */
	padding-top: 0;
	padding-left: 0;
}

.cover-title {
	flex: 1;
}

.cover-description {
	display: block;
	margin-top: 10px;
	font-size: 20px; /* Adjust as needed */
}

.cover-image {
	flex: 1;
	text-align: center; /* Center the image */
}

.mainImage {
	height: 300px;
	width: 600px;
	max-width: 100%;
	height: auto; /* Maintain aspect ratio */
	margin-left: 0;
}

@media ( max-width : 768px) {
	.fleamarket-cover {
		flex-direction: column;
		align-items: center;
		height: auto;
		margin-top: 0;
	}
	.cover-title {
		padding-left: 0;
		margin: 20px 0;
	}
	.mainImage {
		width: 100%;
		height: auto;
		margin-left: 0;
	}
}

@media ( min-width : 768px) {
	.fleamarket-cover {
		height: 315px;
		padding: 0 16px;
		margin-top: 60px;
	}
	.mainImage {
		width: 600px;
		height: 300px;
	}
}

.form-control {
	width: 100%;
	padding: 8px;
	box-sizing: border-box;
}

.profileImage {
	cursor: pointer;
}

.changeSain {
	margin-top: 20px;
}

.link-block {
	display: block;
	margin-top: 10px;
	text-decoration: none; /* 링크 밑줄 제거 */
	color: inherit; /* 링크 색상 부모 요소와 동일 */
}

.link-block:hover {
	text-decoration: none; /* 링크에 마우스를 올렸을 때 밑줄 제거 */
	color: inherit; /* 링크에 마우스를 올렸을 때 색상 변화 없음 */
}

.link-block img {
	vertical-align: middle; /* 이미지와 텍스트를 수직으로 정렬 */
}

.table .completed-row {
 	font-style: inherit;
 	color: #9c27b0 !important; 
    font-weight: bold !important;
}

#storeApplicationModal .modal-dialog {
        max-width: 60%;
}

#storeApplicationModal .modal-body {
    overflow-x: auto; /* 필요한 경우 가로 스크롤을 추가 */
}

.item-basic-content { cursor: pointer; }
.item-detail-content { display: none; }

.answer-form textarea { width: 100%; height: 75px; resize: none; }

.answerQuestion, .deleteQuestion { cursor: pointer; padding-left: 5px; }
.answerQuestion:hover, .deleteQuestion:hover { font-weight: 500; color: #2478FF; }


</style>
</head>

<div class="container">

	<section class="fleamarket-cover">
		<div class="cover-title htext" style="margin-left: 100px;">
			<h1>마이페이지</h1>
			<span class="cover-description htext">나: 나누고 싶은 마음을 담아</span><br>
			<span class="cover-description htext" style="margin-top: -25px;">무:
				무한한 가능성을 거래합니다.</span>
		</div>
		<div class="cover-image">
			<img class="mainImage ml-3" alt=""
				src="${pageContext.request.contextPath}/resources/images/camp_1.png">
		</div>
	</section>

	<div class="body-main">
		<!-- 첫 번째 줄 -->
		<div class="row">
			<div class="col-sm-3">
				<div class="box1"
					style="height: 400px; display: flex; flex-direction: column; justify-content: space-between; align-items: center;">
					<div class="inner-box" style="height: 220px; width: 100%">
						<c:if test="${empty dto.photo}">
							<img class="profileImage" alt="" id="profileImage"
								onclick="Ischange();"
								src="${pageContext.request.contextPath}/resources/images/person.png">
						</c:if>
						<img class="profileImage" id="profileImage" onclick="Ischange();"
							src="${pageContext.request.contextPath}/uploads/photo/${dto.photo}">
					</div>
					<div class="inner-box" style="height: 30px; width: 100%">
						<p style="font-size: 30px;">${userdto.nickname}</p>
					</div>
					<div class="inner-box" style="height: 30px; width: 100%">
						<p style="font-size: 20px;">${userdto.ment}</p>
					</div>
					<div class="inner-box" style="height: 60px; width: 50%">
						<c:forEach var="bo" items="${blist}">
							<img alt=""
								src="${pageContext.request.contextPath}/resources/images/${bo.num}.png">
						</c:forEach>
					</div>
				</div>
			</div>

			<div class="col-sm-3 d-none d-sm-block ml-5 mt-3">
				<div class="box" style="height: 120px;">
					<div
						style="display: flex; justify-content: space-between; margin-bottom: 10px;">
						<p style="margin: 0; font-size: 20px; font-weight: 200;">
							<img class="icons"
								src="${pageContext.request.contextPath}/resources/images/icon_point.png">
							포인트
						</p>
						<p style="margin: 0; font-size: 20px;">${point}P</p>
					</div>

					<div style="display: flex; justify-content: space-between;">
						<a style="margin: 0; font-size: 20px; font-weight: 200;"
							href="${pageContext.request.contextPath}/alarm/list"> <img
							class="icons"
							src="${pageContext.request.contextPath}/resources/images/icon_message.png">
							메세지
						</a>
						<p style="margin: 0; font-size: 20px;">${message}건</p>
					</div>
				</div>
			</div>

			<div class="col-sm-6 d-none d-sm-block ml-4 mt-3">
			<div class="box"
				style="display: flex; flex-direction: column; align-items: center; height: 120px;">
				<!-- 제목을 추가하는 div -->
				<div
					style="margin-bottom: 10px; font-size: 18px; font-weight: bold;">
					나무 성장 속도 : ${userdto.userManner}cm</div>
				<div style="display: flex; align-items: center; width: 100%;">
					<img class="namuLevel"
						src="${pageContext.request.contextPath}/resources/images/namuLogo.png"
						style="margin-right: 10px;">
					<div class="progress"
						style="flex-grow: 1; height: 30px; margin: 0 10px;">
						<div
							class="progress-bar progress-bar-striped progress-bar-animated bg-success"
							id="progressBar" role="progressbar" aria-valuenow="50"
							aria-valuemin="0" aria-valuemax="100" style="width: 50%;">
							<!-- 진행률 표시 텍스트 -->
						</div>
					</div>
					<img class="namuLevel"
						src="${pageContext.request.contextPath}/resources/images/namuLogo.png"
						style="margin-left: 10px;">
				</div>
			</div>

		</div>

		<!-- 두 번째 줄 -->

		<div class="row custom-margin-top">
			<div class="col-sm-9 offset-sm-3">
				<div class="box"
					style="text-align: left; height: 70px; justify-content: center;">
					<a href="${pageContext.request.contextPath}/delivery/list"
						style="font-size: 20px;"> 🏠 집앞 산책하고 <span
						class="font-weight-bold text-primary">포인트를</span> 얻는 방법
					</a>
				</div>
			</div>
			<div class="col-sm-9 offset-sm-3">
				<div class="box"
					style="text-align: left; height: 70px; justify-content: center;">
					<p style="font-size: 20px;">
						🔥 지금 여러 활동에 참가하면 <span class="font-weight-bold text-primary">한정판
							뱃지</span>를 지급
					</p>
				</div>
			</div>
		</div>

		<!-- 세 번째 줄 -->
		<div class="row">
			<div class="col-sm-3" style="margin-top: 50px;">
				<div class="box-3 custom-margin-top4" style="height: 100%">
					<button type="button" class="btn-user">로그아웃</button>
				</div>
			</div>
			<div class="col-sm-9">
				<div class="box custom-margin-top3" style="background: #BEF4F1">
					<a href="${pageContext.request.contextPath}/talent/list"
						style="margin-top: 1rem; font-size: 25px;">나무에서 당신의 가치를 나눠보세요!</a>
				</div>
			</div>
		</div>

		<!-- 네 번째 줄 -->
		<div class="row mt-5">
			<div class="col-sm-3">
				<div class="box"
					style="display: flex; align-items: center; border: 1px solid #ccc; padding: 10px; border-radius: 5px; margin-bottom: 10px;">
					<img
						src="${pageContext.request.contextPath}/resources/images/icons_calendar.gif"
						style="height: 30%; width: 30%; margin-right: 10px;">
					<div style="display: flex; flex-direction: column; flex-grow: 1;">
						<p style="margin: 0; font-size: 16px; font-weight: bold;">나의
							일정</p>
						<c:forEach var="vo" items="${list}">
							<p style="margin: 0; font-size: 16px;">${vo.subject}</p>
						</c:forEach>
						<a href="${pageContext.request.contextPath}/schedule/main"
							style="align-self: flex-end; margin-top: 10px; font-size: 10px;">일정
							관리하기</a>
					</div>
				</div>
			</div>

			<div class="col-sm-8">
				<h4>나의 활동</h4>
				<div class="box custom-margin-top4"
					style="display: flex; border: none;">
					<div style="flex-grow: 1; text-align: left; font-size: 19px;">
						<!-- 왼쪽 영역 -->
						<a class="link-block" onclick="myGGim();"> <img class="icons"
							src="${pageContext.request.contextPath}/resources/images/icon_heart.png">
							&nbsp;관심목록
						</a> <a class="link-block" onclick="delivery();"> <img
							class="icons"
							src="${pageContext.request.contextPath}/resources/images/icon_transaction.png">
							&nbsp;배달 관리
						</a>
					</div>
					<div style="flex-grow: 1; text-align: left; font-size: 19px;">
						<!-- 오른쪽 영역 -->
						<a class="link-block" onclick="myWrite();"> <img class="icons"
							src="${pageContext.request.contextPath}/resources/images/icon_pencil.png">
							&nbsp;내가쓴글
						</a> <a class="link-block" onclick="badge();"> <img class="icons"
							src="${pageContext.request.contextPath}/resources/images/icon_badge.png">
							&nbsp;나의뱃지
						</a>
					</div>
				</div>
			</div>
		</div>


		<!-- 다섯 번째 줄 -->
		<div class="row">
			<div class="col-sm-3">
				<!-- 빈 열을 추가하여 정렬 보정 -->
			</div>
			<div class="col-sm-8">
				<h4>포인트</h4>
				<div class="box custom-margin-top4"
					style="display: flex; border: none;">
					<div style="flex-grow: 1; text-align: left; font-size: 19px;">
						<!-- 왼쪽 영역 -->
						<a class="link-block" onclick="selectAll();"> <img
							class="icons"
							src="${pageContext.request.contextPath}/resources/images/icon_account.png">
							포인트 통장
						</a> <a class="link-block" onclick="chargeModal();"> <img
							class="icons"
							src="${pageContext.request.contextPath}/resources/images/icon_account.png"
							onclick="requestPay();"> 충전하기
						</a>
					</div>
					<div style="flex-grow: 1; text-align: left; font-size: 19px;">
						<!-- 오른쪽 영역 -->
						<a onclick="refundOk();"> <img class="icons"
							src="${pageContext.request.contextPath}/resources/images/icon_refund.png">
							&nbsp;환불하기
						</a>
					</div>
				</div>
			</div>
		</div>

		<!-- 여섯 번째 줄 -->
		<div class="row">
			<div class="col-sm-3">
				<!-- 빈 열을 추가하여 정렬 보정 -->
			</div>
			<div class="col-sm-8">
				<h4>정보수정</h4>
				<div class="box custom-margin-top4"
					style="display: flex; border: none;">
					<div style="flex-grow: 1; text-align: left; font-size: 19px;">
						<!-- 왼쪽 영역 -->
						<a href="#" class="link-block changeSain" id="changeSain"
							onclick="changePhoto();"> <img class="icons"
							src="${pageContext.request.contextPath}/resources/images/icon_change.png">
							&nbsp;프로필 사진 변경
						</a> <a href="#" class="link-block" onclick="changeNickname();"> <img
							class="icons"
							src="${pageContext.request.contextPath}/resources/images/icon_change.png">
							&nbsp;닉네임 변경
						</a>
					</div>
					<div style="flex-grow: 1; text-align: left; font-size: 19px;">
						<!-- 오른쪽 영역 -->
						<a class="link-block" onclick="changeBasic();"> <img
							class="icons"
							src="${pageContext.request.contextPath}/resources/images/icon_change.png">
							&nbsp;기본정보 변경
						</a> <a class="link-block" onclick="changeMent();"> <img
							class="icons"
							src="${pageContext.request.contextPath}/resources/images/icon_change.png">
							&nbsp;소개글 추가
						</a>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-3">
				<!-- 빈 열을 추가하여 정렬 보정 -->
			</div>
			<div class="col-sm-8">
				<h4>재능마켓</h4>
				<div class="box custom-margin-top4"
					style="display: flex; border: none;">
					<div style="flex-grow: 1; text-align: left; font-size: 19px;">
						<!-- 왼쪽 영역 -->
						<a href="#" class="link-block" onclick="purchaseListModal();">
							<img class="icons"
							src="${pageContext.request.contextPath}/resources/images/icon_change.png">
							&nbsp;나의 구매목록
						</a><a class="link-block" onclick="openStoreApplicationModal();">
							<img class="icons"
							src="${pageContext.request.contextPath}/resources/images/icon_change.png">
							&nbsp;내 상점 관리
						</a>
					</div>
					<div style="flex-grow: 1; text-align: left; font-size: 19px;">
						<!-- 오른쪽 영역 -->
						<a href="#" class="link-block changeSain" id="changeSain"
							onclick="opentalentModal();"> <img class="icons"
							src="${pageContext.request.contextPath}/resources/images/talent2.png">
							&nbsp;나의리뷰/문의
						</a> <a class="link-block" onclick="openStoreInquiryModal();"> <img
							class="icons"
							src="${pageContext.request.contextPath}/resources/images/icon_change.png">
							&nbsp;내 상점 문의
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>
<!-- 내상점 문의 모달 -->
<div class="modal fade" id="storeInquiryModal" tabindex="-1" 
     data-bs-backdrop="static" data-bs-keyboard="false"
     aria-labelledby="storeInquiryModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="storeInquiryModalLabel">상품 문의</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- 이곳에 AJAX로 데이터를 불러와서 채웁니다. -->
                <div id="inquiryListContent">
                    <!-- 로딩 중 표시 -->
                    <div class="text-center">
                        <div class="spinner-border" role="status">
                            <span class="visually-hidden">Loading...</span>
                        </div>
                        <p>Loading inquiries...</p>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
            </div>
        </div>
    </div>
</div>

<!-- 문의 답변 모달 -->
<div class="modal fade" id="storeInquiryModal" tabindex="-1" 
     data-bs-backdrop="static" data-bs-keyboard="false"
     aria-labelledby="storeInquiryModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="storeInquiryModalLabel">상품 문의</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div id="inquiryListContent"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="answerDialogModal" tabindex="-1" 
     data-bs-backdrop="static" data-bs-keyboard="false"
     aria-labelledby="answerDialogModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="answerDialogModalLabel">상품 문의 답변</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="p-2 answer-form">
                    <form name="answerForm" method="post">
                        <div class="row">
                            <div class="col">
                                <span class="fw-bold">답변 달기</span>
                            </div>
                            <div class="col-3 text-end">
                                <input type="checkbox" name="showQuestion" id="showQuestion1" class="form-check-input" value="1">
                                <label class="form-check-label" for="showQuestion1">표시</label>
                            </div>
                        </div>
                        <div class="p-1">
                            <input type="hidden" name="num">
                            <input type="hidden" name="mode" value="${mode}">
                            <input type="hidden" name="page" value="${page}">
                            <textarea name="answer" id="answer" class="form-control"></textarea>
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary btnAnswerSendOk">답변등록 <i class="bi bi-check2"></i></button>
                <button type="button" class="btn btn-secondary btnAnswerSendCancel" data-bs-dismiss="modal">취소</button>
            </div>            
        </div>
    </div>
</div>
<!-- 내 상점 구매 신청 현황 모달 -->
<div class="modal fade" id="storeApplicationModal" tabindex="-1"
	aria-labelledby="storeApplicationModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="storeApplicationModalLabel">내 상점 구매
					신청 현황</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<table id="storeApplicationTable" class="table table-hover">
					<thead>
						<tr>
							<th>신청번호</th>
							<th>신청일</th>
							<th>구매자명</th>
							<th>상품명</th>
							<th>선택 옵션</th>
							<th>구매확정일</th>
							<th>리뷰 여부</th>
						</tr>
					</thead>
					<tbody>
						<!-- 데이터가 동적으로 추가됩니다 -->
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>

<!--  재능마켓 구매목록 모달 -->
<div class="modal fade" id="purchaseListModal" tabindex="-1"
	aria-labelledby="purchaseListModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="purchaseListModalLabel">나의 구매목록</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<table id="purchaseListTable" class="table table-hover">
					<thead>
						<tr>
							<th>구매번호</th>
							<th>제목</th>
							<th>구매일</th>
							<th>구매 확정 상태</th>
							<th>리뷰 등록 상태</th>
						</tr>
					</thead>
					<tbody>
						<!-- 데이터가 동적으로 추가됩니다 -->
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
<!-- 재능마켓 리뷰/질문모달 -->
<div class="modal fade" id="contentModal" tabindex="-1"
	aria-labelledby="contentModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="contentModalLabel">Question &
					Review</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<jsp:include page="review.jsp" />
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>


<div class="modal fade" id="changePhoto" tabindex="-1"
	aria-labelledby="changePhotoLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="changePhotoLabel">프로필사진 변경</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<form name="photoForm" method="post" enctype="multipart/form-data">
					<table class="write-form">
						<td>
							<div class="img-viewer"></div> <input type="file"
							name="selectFile" accept="image/*">
							<button type="button" class="btn btn-primary"
								onclick="photoInsert();">변경하기</button>
						</td>
					</table>
				</form>
			</div>
		</div>
	</div>
</div>

<!-- 포인트 충전모달 -->
<div class="modal fade" id="chargeModal" tabindex="-1"
	data-bs-backdrop="static" data-bs-keyboard="false"
	aria-labelledby="chargeModal" aria-hidden="true">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="">충전하기</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div class="p-3">
					<form name="modelLoginForm" action="" method="post" class="row g-3">
						<div class="mt-0">
							<p class="form-control-plaintext">개인정보 확인을 해주세요</p>
						</div>
						<div class="mt-0">
							<input type="text" name="userId" class="form-control" readonly
								placeholder="이름 : ${userdto.userName}">
						</div>
						<div>
							<input type="password" name="userEamil" autocomplete="off"
								readonly class="form-control"
								placeholder="이메일 : ${userdto.email}">
						</div>
						<div>
							<input type="password" name="userPwd" autocomplete="off" readonly
								class="form-control" placeholder="전화번호 : ${userdto.tel}">
						</div>
						<div>
							<input type="number" name="money" autocomplete="off" id="money"
								class="form-control" placeholder="금액입력 : 100원 이상 입력이 가능합니다.">
						</div>

						<div>
							<button type="button" class="btn btn-primary w-100"
								onclick="sendOk();">충전하기</button>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
</div>

<!-- 환불창 모달 -->
<div id="refundModal" class="modal" tabindex="-1">
	<div class="modal-dialog modal-lg">
		<!-- modal-lg 추가 -->
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">환불 목록</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<table id="refundTable" class="table">
					<thead>
						<tr>
							<th>결제번호</th>
							<th>결제아이디</th>
							<th>결제시간</th>
							<th>결제액수</th>
							<th>환불 사유</th>
							<th>결제유형 : 전자 결제</th>
						</tr>
					</thead>
					<tbody>
						<!-- 데이터가 동적으로 추가됩니다 -->
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>

<!-- 거래내역 모달 -->
<div id="selectAllModal" class="modal" tabindex="-1">
	<div class="modal-dialog modal-lg">
		<!-- modal-lg 추가 -->
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">통장 내역</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<table id="selectAllTable" class="table">
					<thead>
						<tr>
							<th>결제번호</th>
							<th>결제아이디</th>
							<th>결제시간</th>
							<th>결제액수</th>
							<th>현재액수</th>
						</tr>
					</thead>
					<tbody>
						<!-- 데이터가 동적으로 추가됩니다 -->
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>

<!-- 기본정보 변경 모달 -->
<div class="modal fade" id="changeBasic" tabindex="-1"
	data-bs-backdrop="static" data-bs-keyboard="false"
	aria-labelledby="chargeModal" aria-hidden="true">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="">기본정보 변경</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body"></div>
		</div>
	</div>
</div>

<!-- 닉네임 변경 -->
<div class="modal fade" id="nicknameChange" tabindex="-1"
	data-bs-backdrop="static" data-bs-keyboard="false"
	aria-labelledby="chargeModal" aria-hidden="true">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="">닉네임 변경</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div class="p-3">
					<form name="nickForm" action="" method="post" class="row g-3">
						<div class="mt-0">
							<input type="text" name="currentNickname" class="form-control"
								readonly placeholder="기존 닉네임 : ">
						</div>
						<div class="d-flex align-items-center">
							<input type="text" name="nickName" id="nickName"
								autocomplete="off" class="form-control me-2"
								style="width: calc(100% - 140px);" placeholder="변경 닉네임 : ">
							<button type="button" class="btn btn-secondary"
								onclick="checkDuplicateNickname();">닉네임 중복검사</button>
						</div>
						<div>
							<button type="button" class="btn btn-primary w-100"
								onclick="changeGo();">변경하기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 멘트 추가 -->
<div class="modal fade" id="chagneMent" tabindex="-1"
	data-bs-backdrop="static" data-bs-keyboard="false"
	aria-labelledby="chagneMent" aria-hidden="true">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="">소개글 변경</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div class="p-3">
					<form name="mentForm" action="" method="post" class="row g-3">
						<div class="mt-0">
							<input type="text" name="ment" class="form-control"
								placeholder="소개글을 입력하세요: ">
						</div>
						<div>
							<button type="button" class="btn btn-primary w-100"
								onclick="goMent();">변경하기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 배달관리모달 -->
<div id="delivery" class="modal" tabindex="-1">
	<div class="modal-dialog modal-lg">
		<!-- modal-lg 추가 -->
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">배달 관리</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<form name="riderForm" method="post">
				<div class="modal-body">
					<table id="selectDTable" class="table">
						<thead>

							<tr>
								<th>나의 글</th>
								<th>신청한사람</th>
								<th>출발예정시간</th>
								<th>신청인 매너점수</th>
								<th>승인여부</th>
							</tr>
						</thead>
						<tbody>

						</tbody>

					</table>
				</div>
			</form>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>

<!-- 뱃지모달 -->
<div class="modal fade" id="badgeModal" tabindex="-1"
	data-bs-backdrop="static" data-bs-keyboard="false"
	aria-labelledby="badgeModal" aria-hidden="true">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="">나의 뱃지</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div class="p-3">
					<form name="modelLoginForm" action="" method="post" class="row g-3">
						<c:forEach var="bbo" items="${blist}">
							<div>
								<img alt=""
									src="${pageContext.request.contextPath}/resources/images/${bbo.num}.png">
							</div>
							<div class="mt-0">
								<input type="text" name="userId" class="form-control" readonly
									placeholder="뱃지이름 : ${bbo.name}">
							</div>
							<div>
								<input type="password" name="userEamil" autocomplete="off"
									readonly class="form-control"
									placeholder="뱃지설명 : ${bbo.description}">
							</div>
						</c:forEach>
					</form>
				</div>

			</div>
		</div>
	</div>
</div>

<!-- 내가 쓴 글 -->
<div id="myWrite" class="modal" tabindex="-1">
	<div class="modal-dialog modal-lg">
		<!-- modal-lg 추가 -->
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">내가 쓴글</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<table id="myWriteTable" class="table">
					<thead>
						<tr>
							<th>제목</th>
							<th>페이지</th>
							<th>작성시간</th>
							<th>이동하기</th>
						</tr>
					</thead>
					<tbody>
						<!-- 데이터가 동적으로 추가됩니다 -->
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
<!-- 찜목록 -->
<div id="myGGim" class="modal" tabindex="-1">
	<div class="modal-dialog modal-lg">
		<!-- modal-lg 추가 -->
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">관심목록</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<table id="myGGimTable" class="table">
					<thead>
						<tr>
							<th>제목</th>
							<th>페이지</th>
							<th>이동하기</th>
						</tr>
					</thead>
					<tbody>
						<!-- 데이터가 동적으로 추가됩니다 -->
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">

window.onload = function() {
	const urlParams = new URLSearchParams(window.location.search);
    if (urlParams.get('openModalPurchase') === 'true') {
    	purchaseListModal();
    }
	
    if (urlParams.get('mode') === 'qna') {
    	opentalentModal();
    }
    var mannerTemperature = ${userdto.userManner}; // 서버에서 전달된 매너 온도 점수
    var progressBar = document.getElementById('progressBar');
    
    // 매너 온도 점수를 기준으로 프로그레스 바의 너비를 설정
    progressBar.style.width = (mannerTemperature)/5 + '%';
    progressBar.setAttribute('aria-valuenow', mannerTemperature);
    
    let url = "${pageContext.request.contextPath}/mypage/badgeInsert";
	let query = "";
	
    const fn = function(data) {
        let state = data.state;
        if (state === "true") {
        } else {
        }
    };
    ajaxFun(url, "post", query, "json", fn);
};



$(function() {
	let img = "${dto.imageFilename}";
	if( img ) { // 수정인 경우
		img = "${pageContext.request.contextPath}/uploads/photo/" + img;
		$(".write-form .img-viewer").empty();
		$(".write-form .img-viewer").css("background-image", "url("+img+")");
	}
	
	$(".write-form .img-viewer").click(function(){
		$("form[name=photoForm] input[name=selectFile]").trigger("click"); 
	});
	
	$("form[name=photoForm] input[name=selectFile]").change(function(){
		let file = this.files[0];
		if(! file) {
			$(".write-form .img-viewer").empty();
			if( img ) {
				img = "${pageContext.request.contextPath}/uploads/photo/" + img;
			} else {
				img = "${pageContext.request.contextPath}/resources/images/add_photo.png";
			}
			$(".write-form .img-viewer").css("background-image", "url("+img+")");
			
			return false;
		}
		
		if(! file.type.match("image.*")) {
			this.focus();
			return false;
		}
		
		let reader = new FileReader();
		reader.onload = function(e) {
			$(".write-form .img-viewer").empty();
			$(".write-form .img-viewer").css("background-image", "url("+e.target.result+")");
		}
		reader.readAsDataURL(file);
		console.log(reader);
	});
});

function openStoreInquiryModal() {
    $('#storeInquiryModal').modal('show');

    $('#inquiryListContent').html(
        '<div class="text-center">' +
        '    <div class="spinner-border" role="status">' +
        '        <span class="visually-hidden">Loading...</span>' +
        '    </div>' +
        '    <p>문의 내역을 불러오는 중입니다...</p>' +
        '</div>'
    );

    $.ajax({
        url: `${pageContext.request.contextPath}/mypage/mytalentshopQna`,
        method: 'GET',
        dataType: 'json',
        success: function(data) {
            console.log("수신된 데이터:", data);

            let contentHtml = '';

            if (data && data.list && data.list.length > 0) {
                contentHtml += '<div class="card">';
                contentHtml += '<div class="card-header bg-purple text-black">';
                contentHtml += '<h5 class="card-title mb-0">상품 문의</h5>';
                contentHtml += '</div>';
                contentHtml += '<div class="card-body p-0">';
                contentHtml += '<table class="table table-striped">';
                contentHtml += '<thead><tr><th>답변상태</th><th>내용</th><th>작성자</th><th>작성일</th></tr></thead>';
                contentHtml += '<tbody>';

                data.list.forEach(function(item) {
                    contentHtml += '<tr class="item-basic-content border-bottom" onclick="toggleDetail(this)">';
                    contentHtml += '<td>' + (item.answer ? '<span class="badge bg-success">답변완료</span>' : '<span class="badge bg-secondary">답변대기</span>') + '</td>';
                    contentHtml += '<td class="text-truncate" style="max-width: 200px;">' + item.question.replace('<br>', '') + '</td>';
                    contentHtml += '<td>' + item.nickName + '</td>';
                    contentHtml += '<td>' + item.questionDate.substring(0, 10) + '</td>';
                    contentHtml += '</tr>';
                    contentHtml += '<tr class="item-detail-content" style="display: none;">';
                    contentHtml += '<td colspan="4">';
                    contentHtml += '<div class="p-3 bg-light rounded">';
                    contentHtml += '<div class="mb-2"><strong>' + item.subject + '</strong></div>';
                    contentHtml += '<div class="mb-2">' + item.question + '</div>';

                    if (item.answer) {
                        contentHtml += '<div class="bg-light p-3 rounded mt-3" style="border: 1px solid #d4a0ff; background-color: #f9f1ff;">';
                        contentHtml += '<h6 class="mb-2">'+item.answerName+'</h6>';
                        contentHtml += '<div class="mb-2">' + item.answer + '</div>';
                        contentHtml += '<div class="text-end"><small>' + item.answerName + ' - ' + item.answerDate.substring(0, 10) + '</small></div>';
                        contentHtml += '</div>';
                    }

                    contentHtml += '<div class="text-end mt-2">';
                    contentHtml += '<button class="btn btn-sm btn-danger me-2" onclick="deleteQuestion(' + item.num + ')">삭제</button>';
                    contentHtml += '<button class="btn btn-sm btn-primary" onclick="openAnswerModal(' + item.num + ', \'' + item.answer + '\')">답변</button>';
                    contentHtml += '</div>';
                    contentHtml += '</div>';
                    contentHtml += '</td></tr>';
                });

                contentHtml += '</tbody></table></div></div>';
            } else {
                contentHtml = '<p>문의 내역이 없습니다.</p>';
            }

            $('#inquiryListContent').html(contentHtml);
        },
        error: function(xhr, status, error) {
            console.error('문의 내역을 불러오지 못했습니다:', status, error);
            $('#inquiryListContent').html('<p>문의 내역을 불러오는 데 실패했습니다. 나중에 다시 시도해 주세요.</p>');
        }
    });
}


function toggleDetail(element) {
    $(element).next('.item-detail-content').toggle();
}

function openAnswerModal(num, answer) {
    const f = document.answerForm;
    f.num.value = num;
    f.answer.value = (answer && answer !== "null") ? answer : '';
    $("#answerDialogModal").modal("show");
}

function deleteQuestion(num) {
    if (confirm('게시글을 삭제 하시겠습니까 ?')) {
        $.ajax({
            url: '${pageContext.request.contextPath}/mypage/mytalentshopQna/delete',
            method: 'POST',
            data: { num: num },
            success: function() {
                alert('삭제되었습니다.');
                openStoreInquiryModal(); // 리스트 갱신
            },
            error: function(xhr, status, error) {
                console.error('Failed to delete question:', status, error);
                alert('삭제 실패. 다시 시도해주세요.');
            }
        });
    }
}

$(function() {
    $('.btnAnswerSendOk').click(function() {
        const f = document.answerForm;
        let s = f.answer.value.trim();
        if (!s) {
            alert("답변을 입력하세요.");
            f.answer.focus();
            return false;
        }

      
        $.ajax({
            url: `${pageContext.request.contextPath}/mypage/mytalentshopQna/answer`,
            method: 'POST',
            contentType: 'application/json',
            data: JSON.stringify({
                num: f.num.value,
                answer: s,
                showQuestion: f.showQuestion.checked ? 1 : 0
               
            }),
            success: function(response) {
                if (response.status === "success") {
                    alert(response.message);
                    $("#answerDialogModal").modal("hide");
                    openStoreInquiryModal();
                } else {
                    alert(response.message);
                }
            },
            error: function(xhr, status, error) {
                console.error('답변 등록에 실패했습니다:', status, error);
                alert('답변 등록에 실패했습니다. 다시 시도해 주세요.');
            }
        });
    });

    $('.btnAnswerSendCancel').click(function() {
        const f = document.answerForm;
        f.reset();
        $("#answerDialogModal").modal("hide");
    });
});


function purchaseListModal() {
  
    let url = '${pageContext.request.contextPath}/mypage/mytalent';
    let method = 'GET';
    let formData = {};
    let dataType = 'json';

    ajaxFun(url, method, formData, dataType, function(response) {
        let htmlContent = '';

        if (response.state === "true") {
            let tmoderList = response.tmoderList;

            for (let order of tmoderList) {
                htmlContent += '<tr>';
                htmlContent += '<td>' + order.applNum + '</td>';
                htmlContent += '<td>' + order.subject + '</td>';
                htmlContent += '<td>' + order.applDate + '</td>';
					
                if(order.state===1){
                	htmlContent += '<td>구매 취소됨</td>';
                } else if (order.completionDate === null) {
                    htmlContent += '<td><button class="btn btn-primary" onclick="confirmPurchase(' + order.applNum + ')">구매확정</button></td>';
                } else {
                    htmlContent += '<td>' + order.completionDate + '</td>';
                }

                if (order.reviewState === 0 && order.completionDate !== null) {
                    htmlContent += '<td><button class="btn btn-secondary" onclick="registerReview(' + order.tboardNum + ')">리뷰 등록</button></td>';
                } else if (order.reviewState === 1) {
                    htmlContent += '<td>리뷰 등록 완료</td>';
                } else {
                    htmlContent += '<td></td>'; 
                }

                htmlContent += '</tr>';
            }
        } else {
            htmlContent = '<tr><td colspan="5">구매 목록이 없습니다.</td></tr>';
        }

        document.querySelector('#purchaseListTable tbody').innerHTML = htmlContent;

        // 데이터를 로드한 후 모달을 엽니다.
        $('#purchaseListModal').modal('show');
    });
}

// 구매확정 버튼 클릭 시 호출되는 함수
function confirmPurchase(applNum) {
    // 확인 메시지 표시
    if (!confirm("구매번호 " + applNum + " 구매를 확정하시겠습니까?")) {
        return; // 사용자가 취소를 누른 경우
    }

    let url = '${pageContext.request.contextPath}/mypage/confirmed';
    let method = 'POST';
    let formData = { num: applNum };
    let dataType = 'json';

    
    ajaxFun(url, method, formData, dataType, function(response) {
        if (response.state === "true") {
            alert("구매 확정이 완료되었습니다.");

            purchaseListModal();
        } else {
            alert("구매 확정에 실패했습니다. 다시 시도해주세요.");
        }
    });
}


function registerReview(tboardNum) {
	let contextPath = '${pageContext.request.contextPath}';
	let url = contextPath + '/talent/article?num=' + tboardNum;
	window.location.href = url;
}


function openStoreApplicationModal() {
    let url = '${pageContext.request.contextPath}/mypage/mytalentshop';
    let method = 'GET';
    let formData = {};
    let dataType = 'json';

    ajaxFun(url, method, formData, dataType, function(response) {
        let htmlContent = '';

        if (response.state === "true") {
            let myShopList = response.myShopList;

            if (myShopList.length > 0) {
                for (let order of myShopList) {
               
                    let rowClass = order.completionDate ? 'completed-row' : '';

                    htmlContent += '<tr class="'+rowClass+'">';
                    htmlContent += '<td>' + order.applNum + '</td>';
                    htmlContent += '<td>' + order.applDate + '</td>';
                    htmlContent += '<td>' + order.nickName + '</td>';
                    htmlContent += '<td> <a href="${pageContext.request.contextPath}/talent/article?num='+order.tboardNum+'">'+order.subject+'</a></td>';
                    htmlContent += '<td>' + order.optionValue + ', ' + order.optionValue2 + '</td>';
                    if(order.completionDate != null) {
                        htmlContent += '<td>' + order.completionDate + '</td>';
                    } else { 
                        htmlContent += '<td>' + (order.state === 1 ? '취소함' : '진행 중') + '</td>';
                    }
                    htmlContent += '<td>' + (order.reviewState === 1 ? 'O' : 'X') + '</td>';
                    htmlContent += '</tr>';
                }
            } else {
                htmlContent = '<tr><td colspan="6">신청 목록이 없습니다.</td></tr>';
            }
        } else {
            htmlContent = '<tr><td colspan="6">신청 목록이 없습니다.</td></tr>';
        }

        document.querySelector('#storeApplicationTable tbody').innerHTML = htmlContent;

        $('#storeApplicationModal').modal('show');
    });
}

function photoInsert(){
	const f = document.photoForm;
	
	
	    if(!f.selectFile.value ) {
	        alert("이미지 파일을 추가 하세요. ");
	        f.selectFile.focus();
	        return;
		}    

	    f.action = "${pageContext.request.contextPath}/mypage/insertPhoto";
	    f.submit();
	    
}



function opentalentModal() {
	$('#contentModal').modal('show');
	
}

function changePhoto(){
	$('#changePhoto').modal('show');
}

function changeBasic(){
	$('#changeBasic .modal-body').load('${pageContext.request.contextPath}/mypage/update');
	$('#changeBasic').modal('show');
}

function changeNickname(){
	$('#nicknameChange').modal('show');
}
function changeMent(){
	$('#chagneMent').modal('show');
}
function delivery() {
    let url = "${pageContext.request.contextPath}/mypage/whoRider";
    let query = ""; // 추가 쿼리가 필요한 경우 이곳에 설정
    
    const fn = function(data) {
        let state = data.state;
        
        if (state === "true") {
        	
			let htmlContent = '';
			console.log(data.Rlist);
			for (let it of data.Rlist) {
			    // dstart 값에 따라 텍스트 또는 버튼 결정하기
			    let statusContent;
			    if (it.dstart === 0) {
			    	 statusContent = '<button type="button" class="btn btn-primary" name="riderNum" onclick="acceptRequest(this);" data-value="accept" value="' + it.num2 + '" data-num="' + it.num + '">수락</button>';
			    } else {
			        let statusText;
			        switch (it.dstart) {
			            case 1:
			                statusText = '수락';
			                break;
			            case 2:
			                statusText = '거절';
			                break;
			            case 3:
			            	statusText = '정산대기'+'&nbsp;&nbsp;<button type="button" class="btn btn-primary" onclick="acceptMoney(this);"data-value="'+it.point+'" value="' + it.num2 + '" data-num="' + it.num + '">승인</button>&nbsp;<button class="btn btn-primary">거절</button>';
			            	break;
			            case 4:
			            	statusText = '완료';
			            	break;
			            default:
			                statusText = '알 수 없음';
			                break;
			        }
			        statusContent = statusText;
			    }

			    // HTML 콘텐츠 생성
			    htmlContent += '<tr>' +
			        '<td>' + it.subject + '</td>' +
			        '<td>' + it.nickname + '</td>' +
			        '<td>' + it.sdate + ',' + it.stime + '</td>' +
			        '<td>' + it.usermanner + '</td>' +
			        '<td>' + statusContent + '</td>' +
			    '</tr>';
			}


            $('#selectDTable tbody').html(htmlContent);
        	
            $('#delivery').modal('show'); // 모달을 보여줍니다.
        } else {
            alert("신청한 라이더가 없습니다."); // 오류 메시지를 표시합니다.
        }
    };

    // ajaxFun 호출, query는 필요 없는 경우 빈 문자열로 설정
    ajaxFun(url, "post", query, "json", fn);
}

function badge(){
	$('#badgeModal').modal('show');
}

function myWrite() {
    let url = "${pageContext.request.contextPath}/mypage/myWrite";
    let query = "";

    const fn = function(data) {
        let state = data.state;
        if (state === "true") {
            let htmlContent = '';
            
            for (let it of data.Wlist1) {
                let msg;
                
                // tableName에 따라 메시지 설정
                switch (it.tableName) {
                    case 'together':
                        msg = '나무모임';
                        break;
                    case 'delivery': // 예시로 거절 상태를 문자열로 가정
                        msg = '배달';
                        break;
                    case 'talent': // 예시로 정산 대기를 문자열로 가정
                        msg = '재능마켓';
                        break;
                    case 'daily': // 예시로 완료 상태를 문자열로 가정
                        msg = '나무일상';
                        break;
                    case 'used': // 예시로 완료 상태를 문자열로 가정
                        msg = '중고거래';
                        break;
                    case 'auction': // 예시로 완료 상태를 문자열로 가정
                        msg = '중고경매';
                        break;
                    default:
                        msg = '알 수 없음';
                        break;
                }

                // HTML 콘텐츠 생성
                htmlContent += '<tr>';
                htmlContent += '<td>' + it.subject + '</td>';
                htmlContent += '<td>' + msg + '</td>';
                htmlContent += '<td>' + it.regDate + '</td>';
                htmlContent += '<td><button type="button" class="btn btn-primary" onclick="moveArticle(\'' + it.tableName + '\', ' + it.num + ');">이동하기</button></td>';
                htmlContent += '</tr>';
            }

            	for (let it of data.Wlist2) {
                    let msg;
                    
                    // tableName에 따라 메시지 설정
                    switch (it.tableName) {
                        case 'borrow':
                            msg = '빌려드림';
                            break;
                        case 'rent': // 예시로 거절 상태를 문자열로 가정
                            msg = '빌림';
                            break;
                        default:
                            msg = '알 수 없음';
                            break;
                    }
            	
                htmlContent += '<tr>';
                htmlContent += '<td>' + it.subject + '</td>';
                htmlContent += '<td>' + msg + '</td>';
                htmlContent += '<td>' + it.regDate + '</td>';
                htmlContent += '<td><button type="button" class="btn btn-primary" onclick="moveArticle2(\'' + it.tableName + '\', ' + it.num + ', ' + it.categoryNum + ', \'' + it.location + '\');">이동하기</button></td>';
                htmlContent += '</tr>';
            }

            $('#myWriteTable tbody').html(htmlContent);
            $('#myWrite').modal('show');
        } else {
            alert("작성한 글이 없습니다.");
        }
    };

    ajaxFun(url, "get", query, "json", fn);
}

// 개별 기사로 이동하는 함수
function moveArticle(tableName, num) {
	if(tableName === 'auction'){
		location.href = "${pageContext.request.contextPath}/" + tableName + "/article?aNum=" + num + "&page=1";
	}else{
		location.href = "${pageContext.request.contextPath}/" + tableName + "/article?num=" + num + "&page=1";
	}
    
}

function moveArticle2(tableName, num, categoryNum, location2) {

    var townNum = 1;

    if (location2 === '${sessionScope.member.town2}') {
        townNum = 2;
    }
    alert("들어옴");
    console.log(townNum);
   // http://localhost:9090/namu/borrow/article?townNum=1&categoryNum=0&page=1&num=20
	let url = "${pageContext.request.contextPath}/"+tableName+"/article?num="+num+"&page=1&categoryNum="+categoryNum+"&townNum="+townNum;
	console.log(url);
    location.replace(url);
}

function myGGim() {
    let url = "${pageContext.request.contextPath}/mypage/myGGim";
    let query = "";

    const fn = function(data) {
        let state = data.state;
        if (state === "true") {
            let htmlContent = '';
         
            	for (let it of data.Glist1) {
                    let msg;
                    
                    // tableName에 따라 메시지 설정
                    switch (it.tableName) {
                        case 'together':
                            msg = '나무모임';
                            break;
                        case 'delivery': // 예시로 거절 상태를 문자열로 가정
                            msg = '배달';
                            break;
                        case 'talent': // 예시로 정산 대기를 문자열로 가정
                            msg = '재능마켓';
                            break;
                        case 'daily': // 예시로 완료 상태를 문자열로 가정
                            msg = '나무일상';
                            break;
                        case 'used': // 예시로 완료 상태를 문자열로 가정
                            msg = '중고거래';
                            break;
                        case 'auction': // 예시로 완료 상태를 문자열로 가정
                            msg = '중고경매';
                            break;
                        default:
                            msg = '알 수 없음';
                            break;
                    }
            	
            	
            
                htmlContent += '<tr>';
                htmlContent += '<td><img class="icons" src="' + 
                '${pageContext.request.contextPath}/resources/images/icon_heart.png" />&nbsp;' + 
                it.subject + '</td>';

                htmlContent += '<td>' + msg + '</td>';
                htmlContent += '<td><button type="button" class="btn btn-primary" onclick="ggimArticle(\'' + it.tableName + '\', ' + it.num + ');">이동하기</button></td>';
                htmlContent += '</tr>';
            }
   
            	
            	for (let it of data.Glist2) {
                    let msg;
                    
                    // tableName에 따라 메시지 설정
                    switch (it.tableName) {
                        case 'borrow':
                            msg = '빌려드림';
                            break;
                        case 'rent': // 예시로 거절 상태를 문자열로 가정
                            msg = '빌림';
                            break;
                        default:
                            msg = '알 수 없음';
                            break;
                    }	
            	
            
                htmlContent += '<tr>';
                htmlContent += '<td><img class="icons" src="' + 
                '${pageContext.request.contextPath}/resources/images/icon_heart.png" />&nbsp;' + 
                it.subject + '</td>';

                htmlContent += '<td>' + msg + '</td>';
                htmlContent += '<td><button type="button" class="btn btn-primary" onclick="ggimArticle2(\'' + it.tableName + '\', ' + it.num + ', ' + it.categoryNum + ', \'' + it.location + '\');">이동하기</button></td>';
                htmlContent += '</tr>';
            }

            $('#myGGimTable tbody').html(htmlContent);
            $('#myGGim').modal('show');
        } else {
            alert("작성한 글이 없습니다.");
        }
    };

    ajaxFun(url, "get", query, "json", fn);
}

// 개별 기사로 이동하는 함수
function ggimArticle(tableName, num) {
	if(tableName === 'auction'){
		location.href = "${pageContext.request.contextPath}/" + tableName + "/article?aNum=" + num + "&page=1";
	}else{
		location.href = "${pageContext.request.contextPath}/" + tableName + "/article?num=" + num + "&page=1";
	}
    
}

function ggimArticle2(tableName, num, categoryNum, location2) {

    var townNum = 1;

    if (location2 === '${sessionScope.member.town2}') {
        townNum = 2;
    }
	let url = "${pageContext.request.contextPath}/"+tableName+"/article?num="+num+"&page=1&categoryNum="+categoryNum+"&townNum="+townNum;
    location.replace(url);
}


function acceptMoney(button){
	const f = document.riderForm;
	const num2 = button.getAttribute('value');         // it.num2의 값
    const num = button.getAttribute('data-num');  
    const current = ${point};
    const point = button.getAttribute('data-value');
    
	f.action = "${pageContext.request.contextPath}/mypage/okMoney?num2="+num2+"&num="+num+"&current="+current+"&point="+point;
	f.submit();
}

function acceptRequest(button){
	const f = document.riderForm;
	const num2 = button.getAttribute('value');             // it.num2의 값
    const num = button.getAttribute('data-num');  
    
    
	f.action = "${pageContext.request.contextPath}/mypage/myRider?num2="+num2+"&num="+num;
	f.submit();
}

function Ischange() {
    // 포커스를 이동시킬 요소를 가져옵니다.
    var changeSain = document.getElementById('changeSain');

    // 요소에 포커스를 설정합니다.
    changeSain.scrollIntoView({ behavior: 'smooth', block: 'start' });
    
    // 포커스를 설정하여 화면 리더기가 해당 요소를 읽도록 합니다.
    changeSain.setAttribute('tabindex', '-1');
    changeSain.focus();
}


function refundOk() {
    let url = "${pageContext.request.contextPath}/mypage/selectCharge";
    let query = "";

    const fn = function(data) {
        let state = data.state;
        if (state === "true") {
            // console.log(data.list);
            let htmlContent = '';
			
            for (let it of data.list) {
                htmlContent += '<tr>' +
                    '<td>' + it.pointNum + '</td>' +
                    '<td>' + it.userId + '</td>' +
                    '<td>' + it.regDate + '</td>' +
                    '<td>' + it.pointVar + '</td>' +
                    '<td><input type="text" id="description-' + it.pointNum + '" placeholder="환불 사유" /></td>' +
                    '<td><button type="button" onclick="refundGo(this);" data-num="' + it.pointNum + '" data-pointVar="' + it.pointVar + '">환불하기</button></td>' +
                '</tr>';
            }

            $('#refundTable tbody').html(htmlContent);
            $('#refundModal').modal('show');
        } else {
            alert("결제 정보가 없습니다.");
        }
    };

    ajaxFun(url, "get", query, "json", fn);
}

function refundGo(button) {
    const num = button.getAttribute('data-num');
    let point = button.getAttribute('data-pointVar');
    getToken(num,point);
}

function getToken(num,point) {
    let url = "${pageContext.request.contextPath}/payments/token";
	let query = "";
	
    const fn = function(data) {
        let state = data.state;
        if (state === "true") {
            alert("불러오기 성공");
            console.log(data.access_token);
            let access_token = data.access_token;
            cancel(num,access_token,point);
        } else {
            alert("불러오기 실패");
        }
    };
    ajaxFun(url, "post", query, "json", fn);
}

function cancel(num, access_token,point) {
    let url = "${pageContext.request.contextPath}/payments/cancel";
    let description = document.getElementById('description-' + num).value;
    
    let formData = {
        merchant_uid: num,
        reason: description,
        access_token: access_token // 액세스 토큰 추가
    };

    const fn = function(data) {
        let state = data.state;
        if (state === "true") {
            alert("환불 성공");
            insertRefund(num,point);
        } else {
            alert("환불 실패");
            console.log(data.message);
        }
    };
    
    // ajaxFun 함수 예시
    function ajaxFun(url, type, data, dataType, successFn) {
        $.ajax({
            url: url,
            type: type,
            contentType: "application/json",
            data: JSON.stringify(data),
            dataType: dataType,
            success: successFn,
            error: function(xhr, status, error) {
                alert("전송 실패: " + xhr.responseText);
            }
        });
    }

    ajaxFun(url, "post", formData, "json", fn);
}

function insertRefund(num,point){
	let url = "${pageContext.request.contextPath}/mypage/insertRefund";
	
	let description = document.getElementById('description-' + num).value;
	
    let formData = {point:point,description:description,pointNum:num};
	console.log(formData);
	
    const fn = function(data) {
        let state = data.state;
        if (state === "true") {
        	refundPoint(point,description);
            alert("저장 성공");
            location.href = "${pageContext.request.contextPath}/mypage/list";
        } else {
            alert("저장 실패");
        }
    };
    ajaxFun(url, "post", formData, "json", fn);
}


function refundPoint(point,description){
	let url = "${pageContext.request.contextPath}/mypage/refundPoint";
	let currentPoint = ${point};
	let formData = {pointVar:point,description:description,currentPoint:currentPoint};
	
	 const fn = function(data) {
	        let state = data.state;
	        if (state === "true") {
	            alert("통장저장 성공");
	        } else {
	            alert("통장저장 실패");
	        }
	    };
	    ajaxFun(url, "post", formData, "json", fn);
	}
	
function sendOk() {
    var money = document.getElementById("money").value;
    if (money < 100) {
        alert("100원 이상 입력이 가능합니다.");
    } else {
        selectSeq(function(sequence) {
            requestPay(money, sequence);
        });
    }
}
	
	function chargeModal() {
		$('#chargeModal').modal('show');
	}
	
	
	function ajaxFun(url, method, formData, dataType, fn, file = false) {
		const settings = {
				type: method, 
				data: formData,
				dataType:dataType,
				success:function(data) {
					fn(data);
				},
				beforeSend: function(jqXHR) {
					jqXHR.setRequestHeader('AJAX', true);
				},
				complete: function () {
				},
				error: function(jqXHR) {
					if(jqXHR.status === 403) {
						login();
						return false;
					} else if(jqXHR.status === 400) {
						alert('요청 처리가 실패 했습니다.');
						return false;
			    	}
			    	
					console.log(jqXHR.responseText);
				}
		};
		
		if(file) {
			settings.processData = false;  // file 전송시 필수. 서버로전송할 데이터를 쿼리문자열로 변환여부
			settings.contentType = false;  // file 전송시 필수. 서버에전송할 데이터의 Content-Type. 기본:application/x-www-urlencoded
		}
		
		$.ajax(url, settings);
	}
	
	function selectSeq(callback) {
	    let url = "${pageContext.request.contextPath}/mypage/selectSeq";
	    let query = "";

	    const fn = function(data) {
	        let state = data.state;
	        if (state === "true") {
	            var sequence = data.sequence;
	            callback(sequence); // 콜백 함수를 호출하여 sequence 값을 전달
	        } else {
	            alert("실패");
	        }
	    };
	    ajaxFun(url, "post", query, "json", fn);
	}
	
	
	function pointCharge(sequence) {
	    let url = "${pageContext.request.contextPath}/mypage/pointCharge";
	    let currentPoint = "${point}";
	    let pointVar = document.getElementById("money").value;
	    
	    
	    let formData = {currentPoint:currentPoint,pointVar:pointVar,pointNum:sequence};
		console.log(formData);
		
	    const fn = function(data) {
	        let state = data.state;
	        if (state === "true") {
	            alert("저장 성공");
	            location.href = "${pageContext.request.contextPath}/mypage/list";
	        } else {
	            alert("저장 실패");
	        }
	    };
	    ajaxFun(url, "post", formData, "json", fn);
	}
	
	function selectAll() {
	    let url = "${pageContext.request.contextPath}/mypage/selectAll";
	    let query = "";

	    const fn = function(data) {
	        let state = data.state;
	        if (state === "true") {
	            // console.log(data.list);
	            let htmlContent = '';
				
	            for (let it of data.listAll) {
	                htmlContent += '<tr>' +
	                    '<td>' + it.pointNum + '</td>' +
	                    '<td>' + it.userId + '</td>' +
	                    '<td>' + it.regDate + '</td>' +
	                    '<td>' + it.pointVar + '</td>' +
	                    '<td>' + it.lastMoney + '</td>' +
	                '</tr>';
	            }

	            $('#selectAllTable tbody').html(htmlContent);
	            $('#selectAllModal').modal('show');
	        } else {
	            alert("결제 정보가 없습니다.");
	        }
	    };

	    ajaxFun(url, "get", query, "json", fn);
	}

	
	//회원정보 업데이트
	function memberOk() {
	const f = document.memberForm;
	let str;

	str = f.userPwd.value;
	if( !/^(?=.*[a-z])(?=.*[!@#$%^*+=-]|.*[0-9]).{5,10}$/i.test(str) ) { 
		alert("패스워드를 다시 입력 하세요. ");
		f.userPwd.focus();
		return;
	}

	if( str !== f.userPwd2.value ) {
        alert("패스워드가 일치하지 않습니다. ");
        f.userPwd.focus();
        return;
	}

    str = f.birth.value;
    if( !str ) {
        alert("생년월일를 입력하세요. ");
        f.birth.focus();
        return;
    }
    
    str = f.tel1.value;
    if( !str ) {
        alert("전화번호를 입력하세요. ");
        f.tel1.focus();
        return;
    }

    str = f.tel2.value;
    if( !/^\d{3,4}$/.test(str) ) {
        alert("숫자만 가능합니다. ");
        f.tel2.focus();
        return;
    }

    str = f.tel3.value;
    if( !/^\d{4}$/.test(str) ) {
    	alert("숫자만 가능합니다. ");
        f.tel3.focus();
        return;
    }
    
    str = f.email1.value.trim();
    if( !str ) {
        alert("이메일을 입력하세요. ");
        f.email1.focus();
        return;
    }

    str = f.email2.value.trim();
    if( !str ) {
        alert("이메일을 입력하세요. ");
        f.email2.focus();
        return;
    }

   	f.action = "${pageContext.request.contextPath}/member/update";
    f.submit();
}

function changeEmail() {
    const f = document.memberForm;
	    
    let str = f.selectEmail.value;
    if(str !== "direct") {
        f.email2.value = str; 
        f.email2.readOnly = true;
        f.email1.focus(); 
    }
    else {
        f.email2.value = "";
        f.email2.readOnly = false;
        f.email1.focus();
    }
}

</script>

<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script>
	var IMP = window.IMP;
	IMP.init("imp62772272");
	
	function requestPay(money,sequence) {
		IMP.request_pay({
			pg : 'html5_inicis.INIpayTest', // 테스트 시 html5_inicis.INIpayTest 기재 
			pay_method : 'card',
			merchant_uid : sequence, // 상점에서 생성한 고유 주문번호
			name : '나무머니',
			amount : money, // 금액
			buyer_email : 'test@portone.io',
			buyer_name : '${userId}',
			buyer_tel : '010-1234-5678', // 필수 파라미터
			buyer_addr : '서울특별시 강남구 삼성동',
			buyer_postcode : '123-456',
		}, function(resp) { // callback
			if (resp.success) {
				
				pointCharge(sequence);
				alert('나무머니가 구매되었습니다...');
				
			} else {
				alert('fail...');
				console.log(resp);
			}
		});
	}
	
	
	//닉네임 중복검사
function checkDuplicateNickname() {
		// 닉네임 중복 검사
		let nickName = $('#nickName').val();
		
	    if(!/^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{2,16}$/i.test(nickName)) { 
			let str = '닉네임은 2자 이상 16자 이하, 영어 또는 숫자 또는 한글을 사용해야 합니다.';
			$('#nickName').focus();
			$('.nickName-box').find('.help-block').html(str);
			return;
		}
		
		let url = '${pageContext.request.contextPath}/member/nickNameCheck';

		// AJAX:POST-JSON
		$.post(url, {nickName:nickName}, function(data){
			//console.log(data);
			
			let passed = data.passed;

			if(passed === 'true') {
				alert("사용가능한 닉네임입니다.");
			} else {
				alert("중복된 닉네임입니다.");
				$('#nickName').val('');
				$('#nickNameValid').val('false');
				$('#nickName').focus();
			}
		}, 'json');
	}
	
	//닉네임 변경
function changeGo(){
    const f = document.nickForm;
    
    // 템플릿 리터럴로 서버에서 주입되는 currentNickname 설정
    let currentNickname = "${userdto.nickname}";
    // 닉네임 입력값 가져오기
    let nickName = f.Nickname;
    
    if(currentNickname === nickName){
        alert('현재 닉네임과 동일합니다.');
        return; // 닉네임이 동일한 경우 제출을 중단합니다.
    }
    
    // form action 설정
    f.action = "${pageContext.request.contextPath}/member/nicknameUpdate";
    f.submit();
}

function goMent(){
    const f = document.mentForm;
    
    let ment = f.ment;
   	
    f.action = "${pageContext.request.contextPath}/member/mentUpdate"
    f.submit();
}

</script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
function daumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {  
            var fullAddr = '';  
            var extraAddr = ''; 

            if (data.userSelectedType === 'R') { 
                fullAddr = data.roadAddress;
            } else { 
                fullAddr = data.jibunAddress;
            }

            if(data.userSelectedType === 'R'){

                if(data.bname !== ''){
                    extraAddr += data.bname;
                }

                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }

                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            var addressParts = fullAddr.split(' ');
            var town1Value = '';

            if (addressParts[0] === '세종특별자치시') {
                town1Value = addressParts[0];
            } else if (addressParts.length >= 3) {
                town1Value = addressParts[0] + ' ' + addressParts[1];
            } else {
                town1Value = fullAddr; 
            }

            document.getElementById('town1').value = town1Value;
        }
    }).open();
}

function town2code() {
    new daum.Postcode({
        oncomplete: function(data) {
            var fullAddr = '';
            var extraAddr = '';

            if (data.userSelectedType === 'R') { 
                fullAddr = data.roadAddress;
            } else { 
                fullAddr = data.jibunAddress;
            }

            if (data.userSelectedType === 'R') {
                if (data.bname !== '') {
                    extraAddr += data.bname;
                }
                if (data.buildingName !== '') {
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
            }

            var addressParts = fullAddr.split(' ');
            var town2Value = '';

            if (addressParts[0] === '세종특별자치시') {
                town2Value = addressParts[0];
            } else if (addressParts.length >= 3) {
                town2Value = addressParts[0] + ' ' + addressParts[1];
            } else {
                town2Value = fullAddr; 
            }

            document.getElementById('town2').value = town2Value;
        }
    }).open();
}


</script>