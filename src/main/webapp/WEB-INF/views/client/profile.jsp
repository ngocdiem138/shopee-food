<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/commons/taglib.jsp" %>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/templates/web/account/"/>" />
</head>

<body>
<div class="wrapper">
    <header class="main-header">
        <div class="container-header">
            <div class="container">
                <div class="header-content row navbar justify-content-between align-items-center"
                     style="min-height: 70px; max-height: 70px;">
                    <div class="logo-now">
							<span>
								<a href="/">
									<img src="/asset/img/shopeefoodvn.png" alt="ShopeeFood">
								</a>
							</span>
                    </div>
                    <div class="select-local" id="select-local">
                        <div class="selected-local" id="selected-local">
                            TP.HCM
                            <i class="fas fa-angle-down" style="margin-top: 5px; margin-left: 5px;"></i>
                        </div>
                        <ul>
                            <li>
                                <a href="#" class="HCM" id="1">
                                    <span class="local" id="local-1" onClick="reply_click(this.id)">TP.HCM</span>
                                    <span class="place" id="place-1">81855 địa điểm</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="DongNai" id="2">
                                    <span class="local" id="local-2" onClick="reply_click(this.id)">Đồng Nai</span>
                                    <span class="place" id="place-2">81955 địa điểm</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="main-nav">
                        <a href="" class="nav-item active">Đồ ăn</a>
                        <a href="" class="nav-item">Thực phẩm</a>
                        <a href="" class="nav-item">Bia</a>
                        <a href="" class="nav-item">Hoa</a>
                        <a href="" class="nav-item">Siêu thị</a>
                        <a href="" class="nav-item">Thuốc</a>
                        <a href="" class="nav-item">Thú cưng</a>
                    </div>
                    <div class="header-icon-search" style="margin-right: -60px;">
                        <a><span class="icon fas fa-search fa-lg"></span></a>
                    </div>
                    <div class="user-acc">
                        <button type="button" class="btn btn-none-bg btn-login">Đăng nhập</button>
                    </div>
                    <div class="language">
                        <!-- content -->
                        <nav>
                            <div class="lang-menu">
                                <div class="selected-lang" id="selected-lang"><i class="fas fa-angle-down"
                                                                                 style="margin-top: 5px; margin-left: 35px;"></i></div>
                                <ul>
                                    <li>
                                        <a href="#" class="vn" id="lang-vn" onClick="lang_change(this.id)">Tiếng Việt</a>
                                    </li>
                                    <li>
                                        <a href="#" class="en" id="lang-en" onClick="lang_change(this.id)">Tiếng Anh</a>
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
<div class="container-profile">
    <div class="profile-right-navigation">
        <div class="name">
            <div class="avt">
                <img src="./asset/img/profile/backgr.jpg" alt="avt">
            </div>
            <div id="text">Lương Quốc Trung</div>
        </div>
        <div class="update-account">
            <i class="fas fa-user"></i>
            <div id="text">Cập nhật tài khoản</div>
        </div>
        <div class="info-oder">
            <i class="fas fa-shopping-cart"></i>
            <div id="text">Thông tin đơn hàng</div>
        </div>
    </div>
    <div class="profile-left-navigation">
        <div class="header">Thông tin người dùng</div>
        <div class="body">
            <div class="update-avt">
                <div class="title">Tải ảnh đại diện</div>
                <div class="update">
                    <div class="left">
                        <div class="avt">
                            <img src="./asset/img/profile/backgr.jpg" alt="avt">
                        </div>
                    </div>
                    <div class="right">
                        <div class="form-group">
                            <span id="notice">Tải lên từ:</span>
                            <div class="custom-file-image">
                                <input type="file" required>
                                <!-- <label for="">Chọn</label> -->
                                <span >Chấp nhận GIF, PNG</span>

                            </div>
                        </div>
                        <button type="button" class="profile-btn">Cập nhật</button>

                    </div>

                </div>
            </div>

        </div>
        <hr>
        <!-- ................. -->
        <form action="" class="form-user-detail">
            <div class="title">Thay đổi thông tin</div>
            <div class="row-info">
                <div class="key-name">Tên</div>
                <input class="key-value" name="name" placeholder="Tên" type="text" value="trinh đù">
            </div>
            <div class="row-info">
                <div class="key-name">Giới tính</div>
                <select name="gender" class="key-value">
                    <option value="0">Không chọn</option>
                    <option value="1">Nam</option>
                    <option value="2">Nữ</option></select>
            </div>
            <div class="row-info">
                <div class="key-name">Email</div>
                <div>Trung</div>
            </div>
            <div class="row-info">
                <div class="key-name">Mật khẩu</div>
                <div class="typePassword">Bí mật đó nha</div>
                <a href="">Đổi mật khẩu</a>
            </div>
            <button type="submit" class="profile-btn">Lưu thay đổi</button>
        </form>
        <hr>
        <!-- ................ -->
        <div class="title">Quản lý số điện thoại</div>
        <div class="update-phone">
            <div class="phone">
                <span>0935544787</span>
                <i class="fas fa-check-circle">&ensp; Số điện thoại đã được xác thực</i>
            </div>
            <button type="submit" class="profile-btn">Cập nhật số điện thoại</button>
        </div>
        <hr>
        <!--  -->
    </div>
</div>
<script type="text/javascript" src="asset/js/common.js"></script>
<script type="text/javascript" src="asset/js/header.js"></script>
</body>

</html>
