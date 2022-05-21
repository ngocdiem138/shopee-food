<%@ page contentType='text/html' pageEncoding='UTF-8' %>
<%@ include file='/commons/taglib.jsp' %>

<head>
    <title>history</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/templates/web/history/css/history.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/templates/web/history/css/history_responsive.css'/>">
</head>

<body>
<div class="history-container">

    <h1 class="history-header"> Lịch sử đơn hàng </h1>

    <div class="history-table-container">

        <div class="history-filter-table">

            <div class="history-filter-table-item">
                <span class="history-filter-table-label">Trạng thái</span>
                <select name="" class="history-flatpickr-input history-filter">
                    <option value="-1" selected=""> Tất cả</option>
                    <option value="4">Hoàn tất</option>
                    <option value="8">Hủy</option>
                </select>
            </div>

            <div class="history-filter-table-item">
                <span class="history-filter-table-label">Từ ngày </span>
                <input value="" type="text" class="history-filter" readonly="readonly">
            </div>

            <div class="history-filter-table-item">
                <span class="history-filter-table-label">Đến ngày </span>
                <input value="" type="text" class="history-filter" readonly="readonly">
            </div>

            <div class="history-filter-table-item">
                <button type="button" class="history-search-button">Tìm kiếm</button>
            </div>

        </div>

        <!-- <div class="history-table">
            <div class="history-table-heading">
                <div class="history-table-cell">STT</div>
                <div class="history-table-cell">Mã đơn hàng</div>
                <div class="history-table-cell">Thời gian</div>
                <div class="history-table-cell">Địa điểm</div>
                <div class="history-table-cell">Nhân viên</div>
                <div class="history-table-cell">Tổng tiền</div>
                <div class="history-table-cell">Trạng thái</div>
                <div class="history-table-cell">Chi tiết</div>
            </div>

        </div> -->
        <div class="history-table-center">
            <table class="history-table">
                <thead class="history-table-heading">
                <tr class="history-table-cell">
                    <th class="history-table-cell-margin">STT</th>
                    <th class="history-table-cell-margin">Mã đơn hàng</th>
                    <th class="history-table-cell-margin">Thời gian</th>
                    <th class="history-table-cell-margin">Địa điểm</th>
                    <th class="history-table-cell-margin">Nhân viên</th>
                    <th class="history-table-cell-margin">Tổng tiền</th>
                    <th class="history-table-cell-margin">Trạng thái</th>
                    <th class="history-table-cell-margin">Chi tiết</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                </tbody>

            </table>
        </div>
    </div>
</div>

</body>
