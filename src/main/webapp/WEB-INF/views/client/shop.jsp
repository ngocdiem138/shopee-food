<%@ page contentType='text/html' pageEncoding='UTF-8' %>
<%@ include file='/commons/taglib.jsp' %>
<jsp:useBean id="shop" scope="request" type="com.shopeefood.models.entities.Shop"/>
<jsp:useBean id="menus" scope="request" type="java.util.List<com.shopeefood.models.entities.Menu>"/>

<head>
    <link href='<c:url value='/templates/web/shop/css/shop.css'/>' rel='stylesheet'>
    <title>${shop.name}</title>
    <script src='<c:url value='/templates/web/shop/js/shop.js'/>'></script>
</head>
<body>
<div id='app'>
    <div class='wrapper'>
        <div class='now-detail-restaurant clearfix'>
            <div class='container'>
                <div class='detail-restaurant-img'>
                    <img src='${shop.image}'
                         alt='Lẩu Đức Trọc - Đường Láng' class=''>
                </div>
                <div class='detail-restaurant-info'>
                    <nav aria-label='breadcrumb'>
                        <ol class='breadcrumb'>
                            <li class='breadcrumb-item'>
                                <a class='breadcrumb-link' rel='nofollow' href='/'>Home</a>
                            </li>
                            <li class='breadcrumb-item'>
                                <a class='breadcrumb-link' rel='nofollow' href='/ha-noi'>Hà Nội</a>
                            </li>
                            <li class='breadcrumb-item'>
                                <a class='breadcrumb-link' rel='nofollow' href='/${shop.id}'>${shop.name}</a>
                            </li>
                        </ol>
                    </nav>
                    <div class='kind-restaurant'>
                            <span> Quán ăn
                                <span> -
                                    <a class='link-brand' title='Lẩu Đức Trọc' rel='nofollow'
                                       href='/thuong-hieu/bia-duc-troc'>Chi nhánh</a>
                                </span>
                            </span>
                    </div>
                    <h1 class='name-restaurant'>${shop.name}</h1>
                    <div class='address-restaurant'>${shop.description}</div>
                    <div class='rating'>
                        <div class='stars'>
                                <span class='full'>
                                    <i class='fas fa-star'></i>
                                </span>
                            <span class='full'>
                                    <i class='fas fa-star'></i>
                                </span>
                            <span class='full'>
                                    <i class='fas fa-star'></i>
                                </span>
                            <span class='full'>
                                    <i class='fas fa-star'></i>
                                </span>
                            <span class='half'>
                                    <i class='fas fa-star-half-alt'></i>
                                </span>
                        </div>
                        <span class='number-rating'>10+</span>
                        đánh giá trên ShopeeFood
                    </div>
                    <div class='view-more-rating'>
                        <a href='https://foody.vn/ha-noi/lau-duc-troc-duong-lang' rel='noopener noreferrer nofollow'
                           target='_blank' class='number-review'>Xem thêm lượt đánh giá từ Foody</a>
                    </div>
                    <div class='status-restaurant'>
                        <div class='opentime-status'>
                            <span class='stt online' title='Mở cửa'></span>
                        </div>
                    </div>
                    <div class='cost-restaurant'>
                        <i class='fas fa-dollar-sign'></i>
                        15,000 - 875,000
                    </div>
                    <div class='share-social clearfix'>
                        <div class='share-social-box'>
                            <div class='fb-like' data-layout='button' data-action='like' data-size='small'
                                 data-show-faces='false' data-share='true' data-colorscheme='light'
                                 data-kid-directed-site='false'></div>
                        </div>
                    </div>
                    <div class='utility-restaurant clearfix'>
                        <div class='utility-item'>
                            <div class='utility-title'>Phí dịch vụ</div>
                            <div class='utility-content'>
                                <span class='txt-bold txt-red'> 0.0% Phí phục vụ </span>
                            </div>
                            <span class='icon icon-partner-vi' data-toggle='modal'
                                  data-target='#modal-verify-merchant'></span>
                        </div>
                        <div class='utility-item'>
                            <div class='utility-title'>Dịch vụ bởi</div>
                            <div class='utility-content'>
                                <span class='txt-bold txt-red'>ShopeeFood</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class='container relative clearfix'>
            <div class='now-menu-restaurant'>
                <div class='menu-restaurant-tab'>
                    <div class='item active'>Thực đơn</div>
                </div>
                <div class='menu-restaurant-content-tab'>
                    <div class='menu-restaurant-container'>
                        <div class='menu-restaurant-category'>
                            <div class='list-category' id='scroll-spy'>
                                <div class='scrollbar-container ps'>
                                    <c:forEach var="menu"
                                               items="${menus}">
                                        <div class='item'>
                                            <span id='1321082' title='LẨU &amp; MÓN THEO KG (NƯỚC LẨU GỌI RIÊNG)'
                                                  class='item-link'>
                                                    ${menu.name}
                                            </span>
                                        </div>
                                    </c:forEach>
                                    <div class='ps__rail-x' style='left: 0px; bottom: 0px;'>
                                        <div class='ps__thumb-x' tabindex='0' style='left: 0px; width: 0px;'></div>
                                    </div>
                                    <div class='ps__rail-y' style='top: 0px; right: 0px;'>
                                        <div class='ps__thumb-y' tabindex='0' style='top: 0px; height: 0px;'>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class='menu-restaurant-detail'>
                            <div class='menu-restaurant-list'>
                                <div class='search-items'>
                                    <p class='input-group'>
                                        <i class='fas fa-search'></i>
                                        <input type='search' name='searchKey' placeholder='Tìm món' value=''>
                                    </p>
                                </div>
                                <div id='restaurant-item'>
                                    <div aria-label='grid' aria-readonly='true'
                                         class='ReactVirtualized__Grid ReactVirtualized__List' role='grid' tabindex='0'
                                         style='box-sizing: border-box; direction: ltr; height: auto; position: relative; width: 558px; will-change: transform; overflow: auto; outline: none;'>
                                        <c:forEach var="menu" items="${menus}">
                                            <div class='ReactVirtualized__Grid__innerScrollContainer' role='rowgroup'
                                                 style='width: auto; height: 6308px; max-width: 558px; max-height: 630px; overflow: hidden; position: relative;'>
                                                <div class='menu-group' id='section-group-menu-1321082'
                                                     style='height: 56px; left: 0px; position: absolute; top: 0px; width: 100%;'>
                                                    <div class='title-menu'>
                                                        ${menu.name}
                                                    </div>
                                                </div>
                                                <c:forEach var="food" items="${menu.foods}">
                                                    <div class='item-restaurant-row'
                                                         style='height: 81px; left: 0px; position: absolute; top: 56px; width: 100%;'>
                                                        <div class='row'>
                                                            <div class='col-auto item-restaurant-img'>
                                                                <button class='inline'>
                                                                    <img src='${food.image}'
                                                                         alt='${food.name}' width='60' height='60'>
                                                                </button>
                                                            </div>
                                                            <div class='col item-restaurant-info'>
                                                                <h2 class='item-restaurant-name'>${food.name}</h2>
                                                                <div class='item-restaurant-desc'>
                                                                    ${food.description}
                                                                </div>
                                                            </div>
                                                            <div class='col-auto item-restaurant-more'>
                                                                <div class='row '>
                                                                    <div class='col-auto product-price'>
                                                                        <div class='old-price'>
                                                                            ${food.price + 5000}
                                                                            <span style='font-weight: 400;position: relative;top: -9px;font-size: 10px;right: 0;'>đ</span>
                                                                        </div>
                                                                        <div class='current-price'>
                                                                            ${food.price}
                                                                            <span style='font-weight: 400;position: relative;top: -9px;font-size: 10px;right: 0;'>đ</span>
                                                                        </div>
                                                                    </div>
                                                                    <div class='col-auto adding-food-cart txt-right'>
                                                                        <div class='btn-adding'>+</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id='topcontrol' class='topcontrol active'>
            <div class='fd-back-top'>
                <div class='control-link' id='btn-back-top' onclick='page_scroll2top()'>
                    <i class='fas fa-angle-up'></i>
                    <label>Quay lại đầu trang</label>
                </div>
                <a class='control-link' href='https://itunes.apple.com/us/app/deliverynow/id1137866760' target='_blank'
                   rel='noopener noreferrer'>
                    <i class='fab fa-apple'></i>
                    <label>Tải ứng dụng iOs</label>
                </a>
                <a class='control-link' href='https://play.google.com/store/apps/details?id=com.deliverynow'
                   target='_blank' rel='noopener noreferrer'>
                    <i class='fab fa-android'></i>
                    <label>Tải ứng dụng android</label>
                </a>
            </div>
        </div>
    </div>

</div>
<!-- Code injected by live-server -->
</body>