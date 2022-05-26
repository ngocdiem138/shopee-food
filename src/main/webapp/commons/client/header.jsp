<%@ page contentType='text/html' pageEncoding='UTF-8' %>
<%@ include file='/commons/taglib.jsp' %>


<head>
    <link rel='stylesheet' type='text/css' href='<c:url value='/templates/web/home/css/home.css'/>'>
    <title>Đặt Đồ Ăn Trực Tuyến Ở 16 Tỉnh Thanh Phố Trên Toàn Quốc & Giao Hàng tận nơi | Đặt Món & Giao ship tận nơi |
        shopeefood.vn</title>
    <script>
        function reply_click(clicked_id) {
            document.getElementById("selected-local").innerHTML = document.getElementById(clicked_id).innerHTML + "<i class=\"fas fa-angle-down\" style=\"margin-top: 5px; margin-left: 5px;\"></i>";
        }

        function lang_change(clicked_id) {
            // Lấy thẻ div
            var div = document.getElementById("selected-lang");
            if (clicked_id == "lang-vn") {
                div.style.backgroundImage = "url(/templates/web/common/img/vietnam.png)"; // change it
            } else {
                div.style.backgroundImage = "url(/templates/web/common/img/anh.png)"; // change it
            }
        }
    </script>
    <script type='text/javascript' src='<c:url value='/templates/web/header/js/header.js'/>'></script>
</head>
<div class='wrapper'>
    <header class='main-header'>
        <div class='container-header'>
            <div class='container'>
                <div class='header-content row navbar justify-content-between align-items-center'
                     style='min-height: 70px; max-height: 70px;'>
                    <div class='logo-now'>
							<span>
								<a href='<c:url value='/'/>'>
									<img src='<c:url value='/templates/web/common/img/shopeefoodvn.png'/>'
                                         alt='ShopeeFood'>
								</a>
							</span>
                    </div>
                    <div class='select-local' id='select-local'>
                        <div class='selected-local' id='selected-local'>
                            TP.HCM
                            <i class='fas fa-angle-down' style='margin-top: 5px; margin-left: 5px;'></i>
                        </div>

                        <ul>
                            <c:set var="count" value="${count}"></c:set>
                            <c:set var="name" value="${name}"></c:set>
                            <c:set var="id" value="${id}"></c:set>
                            <c:forEach var = "i" begin = "0" end = "${counts.size()-1}" varStatus="status">
                            <li>
                                <a href='<c:url value='/home/${counts.get(i).get(name)}'/>' class='${counts.get(i).get(name)}' id='${counts.get(i).get(id)}'>
                                    <span class='local' id='local-1' onClick={reply_click(this.id)}>${counts.get(i).get(name)}</span>
                                    <span class='place' id='place-1'>${counts.get(i).get(count)} địa điểm</span>
                                </a>
                            </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class='main-nav'>
                        <a href='<c:url value='/home'/>' class='nav-item active'>Đồ ăn</a>
                        <a href='<c:url value='/home'/>' class='nav-item'>Thực phẩm</a>
                        <a href='<c:url value='/home'/>' class='nav-item'>Bia</a>
                        <a href='<c:url value='/home'/>' class='nav-item'>Hoa</a>
                        <a href='<c:url value='/home'/>' class='nav-item'>Siêu thị</a>
                        <a href='<c:url value='/home'/>' class='nav-item'>Thuốc</a>
                        <a href='<c:url value='/home'/>' class='nav-item'>Thú cưng</a>
                    </div>
                    <div class='header-icon-search' style='margin-right: -60px;'>
                        <a><span class='icon fas fa-search fa-lg'></span></a>
                    </div>
                    <div class='user-acc'>
                        <button type='button' class='btn btn-none-bg btn-login'>Đăng nhập</button>
                    </div>
                    <div class='language'>
                        <!-- content -->
                        <nav>
                            <div class='lang-menu'>
                                <div class='selected-lang' id='selected-lang'><i class='fas fa-angle-down'
                                                                                 style='margin-top: 5px; margin-left: 35px;'></i>
                                </div>
                                <ul>
                                    <li>
                                        <a href='<c:url value='/home'/>' class='vn' id='lang-vn'
                                           onClick="lang_change(this.id)">Tiếng Việt</a>
                                    </li>
                                    <li>
                                        <a href='<c:url value='/home'/>' class='en' id='lang-en'
                                           onClick="lang_change(this.id)">Tiếng Anh</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                        <!-- /content -->
                    </div>
                </div>
            </div>
        </div>

    </header>
</div>