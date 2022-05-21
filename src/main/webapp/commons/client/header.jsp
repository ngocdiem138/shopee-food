<%@ page contentType='text/html' pageEncoding='UTF-8' %>
<%@ include file='/commons/taglib.jsp' %>

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
                            <li>
                                <a href='<c:url value='/'/>' class='HCM' id='1'>
                                    <span class='local' id='local-1' onClick='reply_click(this.id)'>TP.HCM</span>
                                    <span class='place' id='place-1'>81855 địa điểm</span>
                                </a>
                            </li>
                            <li>
                                <a href='<c:url value='/'/>' class='DongNai' id='2'>
                                    <span class='local' id='local-2' onClick='reply_click(this.id)'>Đồng Nai</span>
                                    <span class='place' id='place-2'>81955 địa điểm</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class='main-nav'>
                        <a href='<c:url value='/'/>' class='nav-item active'>Đồ ăn</a>
                        <a href='<c:url value='/'/>' class='nav-item'>Thực phẩm</a>
                        <a href='<c:url value='/'/>' class='nav-item'>Bia</a>
                        <a href='<c:url value='/'/>' class='nav-item'>Hoa</a>
                        <a href='<c:url value='/'/>' class='nav-item'>Siêu thị</a>
                        <a href='<c:url value='/'/>' class='nav-item'>Thuốc</a>
                        <a href='<c:url value='/'/>' class='nav-item'>Thú cưng</a>
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
                                        <a href='<c:url value='/'/>' class='vn' id='lang-vn'
                                           onClick="lang_change(this.id)">Tiếng
                                            Việt</a>
                                    </li>
                                    <li>
                                        <a href='<c:url value='/'/>' class='en' id='lang-en'
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