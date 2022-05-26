<%@ page contentType='text/html' pageEncoding='UTF-8' %>
<%@ include file='/commons/taglib.jsp' %>

<head>
    <link rel='stylesheet' type='text/css' href='<c:url value='/templates/web/home/css/home.css'/>'>
    <title>Đặt Đồ Ăn Trực Tuyến Ở 16 Tỉnh Thanh Phố Trên Toàn Quốc & Giao Hàng tận nơi | Đặt Món & Giao ship tận nơi |
        shopeefood.vn</title>
    <script type='text/javascript' src='<c:url value='/templates/web/home/js/home.js'/>'></script>
</head>
<body>
<div id='app'>
    <div class='wrapper'>
        <div class='now-banner' id='now-banner'>
            <div class='container'>
                <div class='now-search'>
                    <div>
                        <h1 class='title'>Đặt Đồ ăn; giao hàng từ 20' ...</h1>
                        <div class='local'>có 67378 địa điểm ở TP. HCM từ 00:00 - 23:59</div>
                    </div>
                    <div class='form-search'>
                        <div class='input-group'>
                            <input type='text' id='txtSearchHome' placeholder='Tìm địa điểm, món ăn, địa chỉ...' value>
                            <a href='<c:url value='/'/>'>
                                <button type='button' class='btn btn-search'>
                                    <span class='icon fas fa-search'></span>
                                </button>
                            </a>
                        </div>
                    </div>
                    <div class='category-list-filter'>
                        <a href='<c:url value='/'/>'>
                            <span class='category-item '>All</span>
                        </a>
                        <a href='<c:url value='/'/>'>
                            <span class='category-item '>Đồ chay</span>
                        </a>
                        <a href='<c:url value='/'/>'>
                            <span class='category-item '>Trái cây</span>
                        </a>
                        <a href='<c:url value='/'/>'>
                            <span class='category-item '>Thịt / Trứng</span>
                        </a>
                        <a href='<c:url value='/'/>'>
                            <span class='category-item '>Thủy hải sản</span>
                        </a>
                        <a href='<c:url value='/'/>'>
                            <span class='category-item '>Rau củ</span>
                        </a>
                        <a href='<c:url value='/'/>'>
                            <span class='category-item '>Gạo mì</span>
                        </a>
                        <a href='<c:url value='/'/>'>
                            <span class='category-item '>Đồ hộp / Đồ uống</span>
                        </a><a href='<c:url value='/'/>'>
                        <span class='category-item '>Gia vị</span>
                    </a>
                    </div>
                    <div>
                        <div class='font18 mb-2 mt-3'>
                            Sử dụng App ShopeeFood để có nhiều giảm giá
                            <br>
                            và trải nghiệm tốt hơn
                        </div>
                        <a target='_blank' rel='noopener noreferrer'
                           href='https://itunes.apple.com/us/app/deliverynow/id1137866760' title='App Store'>
                            <img src='<c:url value='/templates/web/common/img/AppStore-vn.png'/>'
                                 class='icon-gg-play-big '>
                        </a>
                        <a target='_blank' rel='noopener noreferrer'
                           href='https://play.google.com/store/apps/details?id=com.deliverynow' title='Google play'>
                            <img src='<c:url value='/templates/web/common/img/PlayStore-vn.png'/>'
                                 class='icon-app-store-big'>
                        </a>
                    </div>
                </div>
            </div>
            <br>
        </div>
        <div class='contain-main-home clearfix'>
            <div class='container'>
                <div class='main-right-home' id='main-right-home'>
                    <div class='user-get-local'>
                        <div class='row align-items-center no-gutters pointer'>
                            <div class='col-auto'>
                                <span class='txt-blue txt-bold'>Thực phẩm</span>
                                <i class='fas fa-long-arrow-alt-right txt-gray-7 ml-2 font12'></i>
                            </div>
                            <div class='col pl-2 pr-2 txt-elipsis'>
                                Chọn địa chỉ giao hàng
                            </div>
                            <div class='col-auto'>
									<span class='pl-2 pr-2 link' data-toggle='modal'>
										<i class='fas fa-angle-right txt-gray-7'></i>
									</span>
                            </div>
                        </div>
                    </div>
                    <div class='now-list-restaurant deal-tab'>
                        <div class='title-wrapper'>
                            <h2 class='title'>Ưu đãi</h2>
                            <a class='view-all-deal' href='<c:url value='/'/>'>
									<span class='icon-list-deal'>
										<i class='fas fa-th-list'></i>
										<span class='square'></span>
										<span class='square'></span>
										<span class='square'></span>
										<span class='square'></span>
									</span>Xem tất cả
                            </a>
                        </div>
                        <div class='list-restaurant'>
                            <div class='now-loading-restaurant  '>
                                <div class='box-loading'>
                                    <div class='box-thumbnail'></div>
                                    <div class='box-line-df'></div>
                                    <div class='box-line-lgx'></div>
                                    <div class='box-line-lg'></div>
                                </div>
                                <div class='box-loading'>
                                    <div class='box-thumbnail'></div>
                                    <div class='box-line-df'></div>
                                    <div class='box-line-lgx'></div>
                                    <div class='box-line-lg'></div>
                                </div>
                                <div class='box-loading'>
                                    <div class='box-thumbnail'></div>
                                    <div class='box-line-df'></div>
                                    <div class='box-line-lgx'></div>
                                    <div class='box-line-lg'></div>
                                </div>
                            </div>
                            <div class='item-restaurant'>
                                <a target='_blank' class='item-content' href='<c:url value='/'/>'>
                                    <div class='img-restaurant'>
                                        <img src='<c:url value='https://images.foody.vn/res/g112/1114302/prof/s280x175/image-77473f1f-220312103455.jpg'/>'
                                             class=''>
                                    </div>
                                    <div class='info-restaurant'>
                                        <div class='info-basic-res'>
                                            <h4 class='name-res' title='Big C - Tân Hiệp'>Big C - Tân Hiệp</h4>
                                            <div class='address-res'
                                                 title='Tầng 1 Và Tầng 2 Trung Tâm Thương Mại Big C Tân Hiệp, 1135 Nguyễn Ái Quốc, P. Tân Hiệp, Tp. Biên Hòa, Đồng Nai'>
                                                Tầng 1 Và Tầng 2 Trung Tâm Thương Mại Big C Tân Hiệp, 1135 Nguyễn Ái
                                                Quốc, P. Tân Hiệp, Tp. Biên Hòa, Đồng Nai
                                            </div>
                                        </div>
                                        <p class='content-promotion'>
                                            <i class='fas fa-tag'></i>
                                            Giảm món
                                        </p>
                                        <div class='opentime-status'>
                                            <span class='stt online' title='Mở cửa'
                                                  style='color: rgb(35, 152, 57); background-color: rgb(35, 152, 57);'></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class='item-restaurant'>
                                <a target='_blank' class='item-content'
                                   href='<c:url value='/'/>'>
                                    <div class='img-restaurant'>
                                        <img src='<c:url value='https://images.foody.vn/res/g112/1114302/prof/s280x175/image-77473f1f-220312103455.jpg'/>'
                                             class=''>
                                        <div class='tag-preferred'>
                                            <i class='fa fa-thumbs-up' aria-hidden='true'></i>
                                            Yêu thích
                                        </div>
                                        <img src='' class=''>
                                    </div>
                                    <div class='info-restaurant'>
                                        <div class='info-basic-res'>
                                            <h4 class='name-res' title='Trái Cây &amp; Rau Củ Quả - Hạt Dinh Dưỡng F48'>
                                                Trái Cây &amp; Rau Củ Quả - Hạt Dinh Dưỡng F48</h4>
                                            <div class='address-res'
                                                 title='5c Tổ 44 Nguyễn Ái Quốc Khu Phố 6, P. Trung Dũng, Tp. Biên Hòa, Đồng Nai'>
                                                5c Tổ 44 Nguyễn Ái Quốc Khu Phố 6, P. Trung Dũng, Tp. Biên Hòa, Đồng Nai
                                            </div>
                                        </div>
                                        <p class='content-promotion'>
                                            <i class='fas fa-tag'></i>
                                            Flash Sale
                                        </p>
                                        <div class='opentime-status'>
                                            <span class='stt online' title='Mở cửa'
                                                  style='color: rgb(35, 152, 57); background-color: rgb(35, 152, 57);'></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class='item-restaurant'>
                                <a target='_blank' class='item-content'
                                   href='<c:url value='/'/>'>
                                    <div class='img-restaurant'>
                                        <img src='<c:url value='/'/>'
                                             class=''>
                                    </div>
                                    <div class='info-restaurant'>
                                        <div class='info-basic-res'>
                                            <h4 class='name-res'
                                                title='Thực Phẩm Dinh Dưỡng - Trái Cây &amp; Rau Củ Giá Bình Ổn - Khu Phố 6'>
                                                Thực Phẩm Dinh Dưỡng - Trái Cây &amp; Rau Củ Giá Bình Ổn - Khu Phố
                                                6</h4>
                                            <div class='address-res'
                                                 title='3B Khu Phố 6, P. Trung Dũng, Tp. Biên Hòa, Đồng Nai'>3B Khu Phố
                                                6, P. Trung Dũng, Tp. Biên Hòa, Đồng Nai
                                            </div>
                                        </div>
                                        <p class='content-promotion'>
                                            <i class='fas fa-tag'></i>
                                            Giảm món
                                        </p>
                                        <div class='opentime-status'>
                                            <span class='stt online' title='Mở cửa'
                                                  style='color: rgb(35, 152, 57); background-color: rgb(35, 152, 57);'></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class='txt-center mt-2'>
                            <button class='btn-none btn-load-more link'>
                                <span class='pr-1'>Xem thêm</span>
                                <i class='fas fa-redo font12 '></i>
                            </button>
                        </div>
                    </div>
                    <div class='now-list-restaurant deal-tab collection collection-tab'>
                        <div class='title-wrapper'>
                            <h2 class='title'>Bộ sưu tập</h2>
                            <a class='view-all-deal' href='<c:url value='/'/>'>
									<span class='icon-list-deal'>
										<i class='fas fa-th-list'></i>
										<span class='square'></span>
										<span class='square'></span>
										<span class='square'></span>
									</span>Xem tất cả
                            </a>
                        </div>
                        <div class='list-restaurant'>
                            <div class='now-loading-restaurant'>
                                <div class='box-loading'>
                                    <div class='box-thumbnail'></div>
                                    <div class='box-line-df'></div>
                                    <div class='box-line-lgx'></div>
                                    <div class='box-line-lg'></div>
                                </div>
                                <div class='box-loading'>
                                    <div class='box-thumbnail'></div>
                                    <div class='box-line-df'></div>
                                    <div class='box-line-lgx'></div>
                                    <div class='box-line-lg'></div>
                                </div>
                                <div class='box-loading'>
                                    <div class='box-thumbnail'></div>
                                    <div class='box-line-df'></div>
                                    <div class='box-line-lgx'></div>
                                    <div class='box-line-lg'></div>
                                </div>
                                <div class='box-loading'>
                                    <div class='box-thumbnail'></div>
                                    <div class='box-line-df'></div>
                                    <div class='box-line-lgx'></div>
                                    <div class='box-line-lg'></div>
                                </div>
                                <div class='box-loading'>
                                    <div class='box-thumbnail'></div>
                                    <div class='box-line-df'></div>
                                    <div class='box-line-lgx'></div>
                                    <div class='box-line-lg'></div>
                                </div>
                                <div class='box-loading'>
                                    <div class='box-thumbnail'></div>
                                    <div class='box-line-df'></div>
                                    <div class='box-line-lgx'></div>
                                    <div class='box-line-lg'></div>
                                </div>
                                <div class='box-loading'>
                                    <div class='box-thumbnail'></div>
                                    <div class='box-line-df'></div>
                                    <div class='box-line-lgx'></div>
                                    <div class='box-line-lg'></div>
                                </div>
                            </div>
                            <div>
                                <div class='item-restaurant'>
                                    <a target='_blank' class='item-content' title='Chợ online - Sale Đỉnh giảm 99k'
                                       href='<c:url value='/'/>'>
                                        <div class='img-restaurant'>
                                            <img src='<c:url value='https://images.foody.vn/delivery/collection/s320x200/image-6edd98d0-211206222900.png'/>'
                                                 class=''>
                                        </div>
                                        <div class='info-restaurant info-basic-res'>
                                            <h4 class='name-res' title='Chợ online - Sale Đỉnh giảm 99k'>Chợ online -
                                                Sale Đỉnh giảm 99k</h4>
                                            <div class='txt-blue font12'>
                                                200 địa điểm
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class='item-restaurant'>
                                    <a target='_blank' class='item-content' title='Chợ online - Sale Đỉnh giảm 99k'
                                       href='<c:url value='/'/>'>
                                        <div class='img-restaurant'>
                                            <img src='<c:url value='https://images.foody.vn/delivery/collection/s320x200/image-6edd98d0-211206222900.png'/>'
                                                 class=''>
                                        </div>
                                        <div class='info-restaurant info-basic-res'>
                                            <h4 class='name-res' title='Chợ online - Sale Đỉnh giảm 99k'>Chợ online -
                                                Sale Đỉnh giảm 99k</h4>
                                            <div class='txt-blue font12'>
                                                200 địa điểm
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class='item-restaurant'>
                                    <a target='_blank' class='item-content' title='Chợ online - Sale Đỉnh giảm 99k'
                                       href='<c:url value='/'/>'>
                                        <div class='img-restaurant'>
                                            <img src='<c:url value='https://images.foody.vn/delivery/collection/s320x200/image-6edd98d0-211206222900.png'/>'
                                                 class=''>
                                        </div>
                                        <div class='info-restaurant info-basic-res'>
                                            <h4 class='name-res' title='Chợ online - Sale Đỉnh giảm 99k'>Chợ online -
                                                Sale Đỉnh giảm 99k</h4>
                                            <div class='txt-blue font12'>
                                                200 địa điểm
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class='item-restaurant'>
                                    <a target='_blank' class='item-content' title='Chợ online - Sale Đỉnh giảm 99k'
                                       href='<c:url value='/'/>'>
                                        <div class='img-restaurant'>
                                            <img src='<c:url value='https://images.foody.vn/delivery/collection/s320x200/image-6edd98d0-211206222900.png'/>'
                                                 class=''>
                                        </div>
                                        <div class='info-restaurant info-basic-res'>
                                            <h4 class='name-res' title='Chợ online - Sale Đỉnh giảm 99k'>Chợ online -
                                                Sale Đỉnh giảm 99k</h4>
                                            <div class='txt-blue font12'>
                                                200 địa điểm
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class='item-restaurant'>
                                    <a target='_blank' class='item-content' title='Chợ online - Sale Đỉnh giảm 99k'
                                       href='<c:url value='/'/>'>
                                        <div class='img-restaurant'>
                                            <img src='<c:url value='https://images.foody.vn/delivery/collection/s320x200/image-6edd98d0-211206222900.png'/>'
                                                 class=''>
                                        </div>
                                        <div class='info-restaurant info-basic-res'>
                                            <h4 class='name-res' title='Chợ online - Sale Đỉnh giảm 99k'>Chợ online -
                                                Sale Đỉnh giảm 99k</h4>
                                            <div class='txt-blue font12'>
                                                200 địa điểm
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class='item-restaurant'>
                                    <a target='_blank' class='item-content' title='Chợ online - Sale Đỉnh giảm 99k'
                                       href='<c:url value='/'/>'>
                                        <div class='img-restaurant'>
                                            <img src='<c:url value='https://images.foody.vn/delivery/collection/s320x200/image-6edd98d0-211206222900.png'/>'
                                                 class=''>
                                        </div>
                                        <div class='info-restaurant info-basic-res'>
                                            <h4 class='name-res' title='Chợ online - Sale Đỉnh giảm 99k'>Chợ online -
                                                Sale Đỉnh giảm 99k</h4>
                                            <div class='txt-blue font12'>
                                                200 địa điểm
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <hr>
                    </div>
                    <div class='now-list-restaurant now-list-restaurant-row home-tab'>
                        <div class='header-tab row align-items-center'>
                            <div class='col'>
                                <button class='item-tab active'>Vừa đặt</button>
                                <button class='item-tab false'>Đặt nhiều</button>
                                <button class='item-tab false'>Gần tôi</button>
                                <button class='item-tab false'>Nổi bật</button>
                            </div>
                            <div class='col-auto'>
                                <select name='districtId'>
                                    <option value='-1'>Chọn quận/ huyện</option>
                                    <option value='48'>Định Quán</option>
                                    <option value='49'>Long Thành</option>
                                    <option value='50'>Xuân Lộc</option>
                                    <option value='51'>Vĩnh Cửu</option>
                                    <option value='52'>Trảng Bom</option>
                                    <option value='53'>Thống Nhất</option>
                                    <option value='55'>Nhơn Trạch</option>
                                    <option value='56'>Cẩm Mỹ</option>
                                    <option value='57'>Tp. Biên Hòa</option>
                                    <option value='66'>Thị xã Long Khánh</option>
                                    <option value='67'>Tân Phú</option>
                                </select>
                            </div>
                        </div>
                        <div class='list-restaurant'>
                            <div class='now-loading-restaurant  '>
                                <div class='box-loading'>
                                    <div class='box-thumbnail'></div>
                                    <div class='box-line-df'></div>
                                    <div class='box-line-lgx'></div>
                                    <div class='box-line-lg'></div>
                                </div>
                                <div class='box-loading'>
                                    <div class='box-thumbnail'></div>
                                    <div class='box-line-df'></div>
                                    <div class='box-line-lgx'></div>
                                    <div class='box-line-lg'></div>
                                </div>
                                <div class='box-loading'>
                                    <div class='box-thumbnail'></div>
                                    <div class='box-line-df'></div>
                                    <div class='box-line-lgx'></div>
                                    <div class='box-line-lg'></div>
                                </div>
                            </div>
                            <div class='item-restaurant'>
                                <a class='item-content' href='<c:url value='/'/>'>
                                    <div class='row no-gutters'>
                                        <div class='col-auto'>
                                            <div class='img-restaurant'>
                                                <img src='<c:url value='https://images.foody.vn/res/g105/1045870/prof/s280x175/image-d13349c1-210115153911.jpeg'/>'>
                                            </div>
                                        </div>
                                        <div class='col'>
                                            <div class='info-restaurant'>
                                                <div class='name-res'>Vinachao - Cháo Dinh Dưỡng</div>
                                                <div class='row'>
                                                    <div class='col'>
                                                        <div class='count-place-res mb-1'>57 địa điểm</div>
                                                    </div>
                                                    <div class='col-auto'>
                                                        <div class='item-res-distant'></div>
                                                    </div>
                                                </div>
                                                <div class='item-res-info'>
                                                    <span class='icon icon-price-tag'></span>
                                                    Tối thiểu 20k
                                                    <span class='icon icon-money-sm ml-3'></span>
                                                    Giá 31k
                                                </div>
                                                <p class='kind-restaurant'> Quán ăn</p>
                                            </div>
                                        </div>
                                        <div class='opentime-status'>
                                            <span class='stt online' title='Mở cửa'
                                                  style='color: rgb(35, 152, 57); background-color: rgb(35, 152, 57);'></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class='item-restaurant'>
                                <a class='item-content' href='<c:url value='/'/>'>
                                    <div class='row no-gutters'>
                                        <div class='col-auto'>
                                            <div class='img-restaurant'>
                                                <img src='<c:url value='https://images.foody.vn/res/g105/1045870/prof/s280x175/image-d13349c1-210115153911.jpeg'/>'
                                                     class=''>
                                            </div>
                                        </div>
                                        <div class='col'>
                                            <div class='info-restaurant'>
                                                <div class='name-res'>Vinachao - Cháo Dinh Dưỡng</div>
                                                <div class='row'>
                                                    <div class='col'>
                                                        <div class='count-place-res mb-1'>57 địa điểm</div>
                                                    </div>
                                                    <div class='col-auto'>
                                                        <div class='item-res-distant'></div>
                                                    </div>
                                                </div>
                                                <div class='item-res-info'>
                                                    <span class='icon icon-price-tag'></span>
                                                    Tối thiểu 20k
                                                    <span class='icon icon-money-sm ml-3'></span>
                                                    Giá 31k
                                                </div>
                                                <p class='kind-restaurant'> Quán ăn</p>
                                            </div>
                                        </div>
                                        <div class='opentime-status'>
                                            <span class='stt online' title='Mở cửa'
                                                  style='color: rgb(35, 152, 57); background-color: rgb(35, 152, 57);'></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class='item-restaurant'>
                                <a class='item-content' href='<c:url value='/'/>'>
                                    <div class='row no-gutters'>
                                        <div class='col-auto'>
                                            <div class='img-restaurant'>
                                                <img src='<c:url value='https://images.foody.vn/res/g105/1045870/prof/s280x175/image-d13349c1-210115153911.jpeg'/>'
                                                     class=''>
                                            </div>
                                        </div>
                                        <div class='col'>
                                            <div class='info-restaurant'>
                                                <div class='name-res'>Vinachao - Cháo Dinh Dưỡng</div>
                                                <div class='row'>
                                                    <div class='col'>
                                                        <div class='count-place-res mb-1'>57 địa điểm</div>
                                                    </div>
                                                    <div class='col-auto'>
                                                        <div class='item-res-distant'></div>
                                                    </div>
                                                </div>
                                                <div class='item-res-info'>
                                                    <span class='icon icon-price-tag'></span>
                                                    Tối thiểu 20k
                                                    <span class='icon icon-money-sm ml-3'></span>
                                                    Giá 31k
                                                </div>
                                                <p class='kind-restaurant'> Quán ăn</p>
                                            </div>
                                        </div>
                                        <div class='opentime-status'>
                                            <span class='stt online' title='Mở cửa'
                                                  style='color: rgb(35, 152, 57); background-color: rgb(35, 152, 57);'></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class='txt-center mt-2'>
                            <button class='btn-none btn-load-more link'>
                                <span class='pr-1'>Xem thêm</span>
                                <i class='fas fa-redo font12 '></i>
                            </button>
                        </div>
                    </div>
                    <div class='end-check-point'></div>
                </div>
                ::after
            </div>
        </div>
        <div class='container' id='container'>
            <div class='now-container-coporation'>
                <h4 class='title'>
                    <span>Đơn hàng của bạn sẽ được bảo quản như thế nào?</span>
                </h4>
                <span>
						<p class='font15'> ShopeeFood sẽ bảo quản đơn của bạn bằng túi &amp; thùng để chống nắng mưa, giữ nhiệt... trên đường đi một cách tốt nhất. </p>
					</span>
                <img src='<c:url value='/templates/web/common/img/Box-food-preservation-footer.png'/>'
                     alt='food preservation'>
            </div>
            <div class='now-container-coporation img-right'>
                <h4 class='title'>
                    <span>ShopeeFood Merchant App</span>
                </h4>
                <span>
						<p class='font14'>-
							<b>ShopeeFood Merchant</b>
							là ứng dụng quản lý đơn hàng cho các nhà hàng đối tác của dịch vụ đặt món tận nơi
						</p>
						<p class='font14'> -
							<b>ShopeeFood.vn</b>
							luôn sẵn sàng hợp tác với các nhà hàng, quán ăn, cafe... để mở rộng kinh doanh cũng như gia tăng khách hàng. Hãy kết nối vào hệ thống đặt và giao hàng để giảm bớt chi phí quản lý, vận hành, marketing, công nghệ...
							<br>
							Đăng ký tham gia:
							<b>
								<a href='https://shopeefood.vn/merchant-register' target='_blank'>tại đây</a>
							</b>
						</p>
					</span>
                <div class='bg-corporation'>
                    <img src='<c:url value='/templates/web/common/img/banner-phone-reg-merchant.png'/>'
                         alt='NowMerchant App' title='NowMerchant App'
                         width='294px'>
                </div>
            </div>
            <div class='now-container-coporation img-right'>
                <h4 class='title'>
                    <a href='/tuyen-dung'>
							<span>
								<span style='color: #EE4D2D;font-weight: bold;'>ShopeeFood.vn</span>
								Hợp tác nhân viên giao nhận - ShopeeFood Driver
							</span>
                    </a>
                </h4>
                <span>
						<p class='font15'>Giúp bạn tăng thu nhập trong thời gian rảnh rỗi</p>
						<p>
							<span style='color: #EE4D2D;font-weight: bold;'>ShopeeFood</span>
							tìm kiếm hợp tác với các cá nhân để thực hiện việc giao hàng, chúng tôi sẽ cung cấp ứng dụng (app), 1 số dụng cụ cần thiết để bạn có thể tiếp nhận &amp; giao hàng, kiếm thêm thu nhập
							<br>Đăng ký tham gia
							<a href='https://shopeefood.vn/tuyen-dung'
                               style='color: #4D77A2; font-weight:bold'>tại đây</a>
							hoặc gửi Email qua
							<a href='mailto:tuyendung@gofast.vn' style='color: #4D77A2; font-weight:bold'>tuyendung@gofast.vn</a>
							- hoặc gọi qua số điện thoại (028) 7109 9179.
						</p>
					</span>
                <div class='bg-corporation'>
                    <img src='<c:url value='/templates/web/common/img/bg-deliverynow-dat-mon-truc-tuyen-giao-hang-tan-noi.png'/>'
                         class='bg-deliverynow'
                         alt='bg-deliverynow-dat-mon-truc-tuyen-giao-hang-tan-noi'
                         title='bg-deliverynow-dat-mon-truc-tuyen-giao-hang-tan-noi' width='170px' data-change-lang=''
                         style='width: 170px;'>
                </div>
            </div>
            <hr>
        </div>

        <div class='modal fade modal-alert' id='cancelOderConfirm' tabindex='-1' role='dialog' aria-hidden='true'>
            <div class='modal-dialog modal-noti' role='document'>
                <div class='modal-content'><span class='close' data-dismiss='modal'>x</span>
                    <div class='modal-header txt-bold font13'><span class='txt-red'>srebranding.ervice_by_now</span>
                        Thông báo
                    </div>
                    <div class='modal-body'><p class='font15'><span>Bạn muốn hủy đơn hàng này ?</span></p></div>
                    <div class='modal-footer content-right'>
                        <button type='button' class='btn btn-red' data-dismiss='modal'>Không, cám ơn</button>
                        <button type='button' class='btn btn-gray' data-dismiss='modal'>Ok</button>
                    </div>
                </div>
            </div>
        </div>

        <div class='modal fade modal-alert' id='modal-payment-succes' tabindex='-1' role='dialog' aria-hidden='true'>
            <div class='modal-dialog modal-noti' role='document'>
                <div class='modal-content'><span class='close' data-dismiss='modal'>x</span>
                    <div class='modal-header txt-bold font13'><span class='txt-red'>Now</span> Thông báo</div>
                    <div class='modal-body'>
                        <div class='col col-12'><p class='font15'></p></div>
                    </div>
                    <div class='modal-footer content-right'>
                        <div class='col'><sup class='txt-red txt-bold'>* </sup>Xin vui lòng kiểm tra đơn hàng của bạn
                            trước khi nhận.
                        </div>
                        <a href='<c:url value='/'/>' class='btn btn-none-bg'>Xem lịch sử đặt món</a>
                        <button type='button' class='btn btn-red' data-dismiss='modal'>Ok</button>
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
                <a class='control-link' href='<c:url value='https://itunes.apple.com/us/app/deliverynow/id1137866760'/>'
                   target='_blank'
                   rel='noopener noreferrer'>
                    <i class='fab fa-apple'></i>
                    <label>Tải ứng dụng iOs</label>
                </a>
                <a class='control-link'
                   href='<c:url value='https://play.google.com/store/apps/details?id=com.deliverynow'/>'
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