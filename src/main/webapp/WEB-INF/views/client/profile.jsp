<%@ page contentType='text/html' pageEncoding='UTF-8' %>
<%@ include file='/commons/taglib.jsp' %>

<head>
    <link rel='stylesheet' type='text/css' href='<c:url value='/templates/web/profile/css/profile.css'/>'/>
    <title>Name of user</title>
</head>

<body>
<div class='container-profile'>
    <div class='profile-right-navigation'>
        <div class='name'>
            <div class='avt'>
                <img src='<c:url value='/templates/web/common/img/backgr.jpg'/>' alt='avt'>
            </div>
            <div id='text'>Lương Quốc Trung</div>
        </div>
        <div class='update-account'>
            <i class='fas fa-user'></i>
            <div id='text'>Cập nhật tài khoản</div>
        </div>
        <div class='info-oder'>
            <i class='fas fa-shopping-cart'></i>
            <div id='text'>Thông tin đơn hàng</div>
        </div>
    </div>
    <div class='profile-left-navigation'>
        <div class='header'>Thông tin người dùng</div>
        <div class='body'>
            <div class='update-avt'>
                <div class='title'>Tải ảnh đại diện</div>
                <div class='update'>
                    <div class='left'>
                        <div class='avt'>
                            <img src='<c:url value='/templates/web/common/img/backgr.jpg'/>' alt='avt'>
                        </div>
                    </div>
                    <div class='right'>
                        <div class='form-group'>
                            <span id='notice'>Tải lên từ:</span>
                            <div class='custom-file-image'>
                                <input type='file' required>
                                <!-- <label for=''>Chọn</label> -->
                                <span>Chấp nhận GIF, PNG</span>

                            </div>
                        </div>
                        <button type='button' class='profile-btn'>Cập nhật</button>

                    </div>

                </div>
            </div>

        </div>
        <hr>
        <!-- ................. -->
        <form action='' class='form-user-detail'>
            <div class='title'>Thay đổi thông tin</div>
            <div class='row-info'>
                <div class='key-name'>Tên</div>
                <input class='key-value' name='name' placeholder='Tên' type='text' value='trinh đù'>
            </div>
            <div class='row-info'>
                <div class='key-name'>Giới tính</div>
                <select name='gender' class='key-value'>
                    <option value='0'>Không chọn</option>
                    <option value='1'>Nam</option>
                    <option value='2'>Nữ</option>
                </select>
            </div>
            <div class='row-info'>
                <div class='key-name'>Email</div>
                <div>Trung</div>
            </div>
            <div class='row-info'>
                <div class='key-name'>Mật khẩu</div>
                <div class='typePassword'>Bí mật đó nha</div>
                <a href=''>Đổi mật khẩu</a>
            </div>
            <button type='submit' class='profile-btn'>Lưu thay đổi</button>
        </form>
        <hr>
        <!-- ................ -->
        <div class='title'>Quản lý số điện thoại</div>
        <div class='update-phone'>
            <div class='phone'>
                <span>0935544787</span>
                <i class='fas fa-check-circle'>&ensp; Số điện thoại đã được xác thực</i>
            </div>
            <button type='submit' class='profile-btn'>Cập nhật số điện thoại</button>
        </div>
        <hr>
        <!--  -->
    </div>
</div>
</body>