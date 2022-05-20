<%@ page contentType='text/html;charset=UTF-8' %>
<%@include file='/commons/taglib.jsp' %>
<head>
    <link rel='stylesheet' href='<c:url value='/templates/web/voucher/css/voucher.css'/>'>
</head>
<body>
<div class='promo-code'>
    <h1 class='block-title'>Mã khuyến mãi</h1>
    <div class='container'>
        <div class='filter-table-item'>
            <span class='filter-table-label title '>Trạng thái</span>
            <select name='' class='form-control'>
                <option value='-1'>All</option>
                <option value='1' selected=''>Còn hạn</option>
                <option value='3'>Đã dùng</option>
                <option value='5'>Đã hết</option>
            </select>
            <button type='button' class='btn btn-sm'>Tìm kiếm</button>
        </div>
        <div class='promo-code-table'>
            <img src='<c:url value='/templates/web/voucher/img/Shipper.png'/>' alt=''>
            <div>Bạn chưa có mã khuyến mãi</div>
        </div>
    </div>
</div>
</body>
</html>
