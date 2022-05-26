INSERT INTO `category` (`name`)
VALUES ('Đồ ăn');

INSERT INTO `role` (name, description)
VALUES ('customer', 'customer');

INSERT INTO `location` (name, ward_id)
VALUES ('56/1/2 Tổ 1, Khu Phố 2, Đường 79', 26848);

INSERT INTO `user` (email, password, name, dob, gender, phone, status, role_id, location_id)
VALUES ('lethingocdiemxt2001@gmail.com',
        '12345',
        'Lê Thị Ngọc Diễm',
        '2022-05-26 22:41:11.5447124',
        'FEMALE',
        '0345645672',
        1,
        1,
        1);

INSERT INTO `shop` (name, phone, description, open_time, image, user_boss_id, location_id)
VALUES ('Sữa Chua Trân Châu Hạ Long Healthy - Việt Hưng',
        '0345645672',
        'Kiot 2, Toà K1, Khu Đô Thị Việt Hưng, Long Biên, Hà Nội',
        '09:00 - 23:00',
        'https://images.foody.vn/res/g109/1081901/prof/s640x400/foody-upload-api-foody-mobile-an-f0586237-210608153419.jpeg',
        1,
        1);

INSERT INTO `menu` (name)
VALUES ('Sữa Chua Trân Châu Hạ Long Healthy - Việt Hưng');

INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Sữa chua trân châu cốt dừa',
        'Sữa chua trân châu cốt dừa',
        30000,
        'https://images.foody.vn/res/g109/1081901/s120x120/0039062f-b1c7-4b5b-b1a0-49a8d4ca-cbd5a282-210615142439.jpeg',
        1,
        1);

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (1,
        1,
        100);

INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Sữa chua trân châu đường đen',
        'Sữa chua trân châu đường đen',
        30000,
        'https://images.foody.vn/res/g109/1081901/s120x120/f4a8cb94-9918-48a6-8ab2-f87f46a8-a6501228-210615133646.jpeg',
        1,
        1);

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (1,
        2,
        100);

INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Sữa chua matcha',
        'Sữa chua matcha',
        30000,
        'https://images.foody.vn/res/g109/1081901/s120x120/f05c1efb-71d8-4b5c-9994-5c2a6ce8-b8e1d6f8-210615133801.jpeg',
        1,
        1);

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (1,
        3,
        100);


INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Sữa chua hoa quả thập cẩm',
        'Sữa chua hoa quả thập cẩm',
        35000,
        'https://images.foody.vn/res/g109/1081901/s120x120/1cba7a51-3555-49a9-990f-e4f2c3a8-9a79acdb-210615133752.jpeg',
        1,
        1);

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (1,
        4,
        100);

INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Sữa chua trắng',
        'Sữa chua trắng',
        25000,
        'https://images.foody.vn/res/g109/1081901/s120x120/b9927cfa-ae59-42b1-bf0b-5947c7aa-4fc6a758-210615142453.jpeg',
        1,
        1);

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (1,
        5,
        100);

INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Sữa chua việt quất',
        'Sữa chua việt quất',
        30000,
        'https://images.foody.vn/res/g109/1081901/s120x120/4e9a4187-533d-4b00-a918-c457bc4e-26e0b4a9-210615142500.jpeg',
        1,
        1);

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (1,
        6,
        100);

INSERT INTO `shop` (name, phone, description, open_time, image, user_boss_id, location_id)
VALUES ('Tiệm Mì Trộn - Mì Trộn HongKong - Thất Khê',
        '0345645672',
        '30/2 Thất Khê, P. Minh Khai, Quận Hồng Bàng, Hải Phòng',
        '08:00 - 22:00',
        'https://images.foody.vn/res/g107/1060854/prof/s640x400/foody-upload-api-foody-mobile-foody-upload-api-foo-201221094756.jpg',
        1, -- #user
        1);

INSERT INTO `menu` (name)
VALUES ('MÌ TRỘN');

INSERT INTO `menu` (name)
VALUES ('ĐỒ UỐNG');

INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('MÌ TRỘN HỒNG KÔNG',
        'MÌ TRỘN HỒNG KÔNG',
        30000,
        'https://images.foody.vn/res/g107/1060854/s120x120/b8adcb83-6491-43f3-9dd1-471be2dd-b1a0bce3-210806123130.jpeg',
        1,
        2);

INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('TOKBOKKI SỐT CAY',
        'TOKBOKKI SỐT CAY',
        59000,
        'https://images.foody.vn/res/g105/1047331/s120x120/2b64fe23-bf55-4333-b58d-9872fe4b-036e680d-210409104115.jpeg',
        1,
        2);

INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Mì Trộn Uyên Ương',
        'Mì Trộn Uyên Ương',
        49000,
        'https://images.foody.vn/res/g107/1060854/s120x120/1473579d-13d7-458d-a045-7df7e98a-88ef179e-210901122717.jpeg',
        1,
        3);

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (2,
        7,
        100);

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (2,
        8,
        100);

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (2,
        9,
        100);



-- trung
-- user: 2 -> 2
-- location: 3 -> 3
-- shop: 3 -> 3
-- menu: 4 -> 8
-- food: 10 -> 33


-- id: 1 #location
INSERT INTO `location` (name, ward_id)
VALUES ('1140 Võ Duy Ninh', 26848);

-- id: 1 #user
INSERT INTO `user` (email, password, name, dob, gender, phone, status, role_id, location_id)
VALUES ('lqtrung20001@gmail.com',
        '123456',
        'Lương Quốc Trung',
        '2022-05-25 22:41:11.5447124',
        'MALE',
        '0935544787',
        1, -- #status active default
        1, -- #role
        3);
-- #location

-- id: 1 #shop
-- https://shopeefood.vn/ho-chi-minh/com-chay-tinh-do-vo-duy-ninh
INSERT INTO `shop` (name, phone, description, open_time, image, user_boss_id, location_id)
VALUES ('Cơm Chay Tịnh Độ',
        '0143018572',
        '140 Võ Duy Ninh, P. 22, Bình Thạnh, TP. HCM',
        '06:30 - 21:00',
        'https://images.foody.vn/res/g24/237357/prof/s640x400/foody-mobile-hmb-jpg-170-635992743525114799.jpg',
        2, -- #user
        3);
-- #location

-- id: 1 #menu
INSERT INTO `menu` (name)
VALUES ('MÓN ĂN CHAY');
INSERT INTO `menu` (name)
VALUES ('MÓN ĂN BÚN+HỦ TIẾU CHAY');
INSERT INTO `menu` (name)
VALUES ('MÓN LẨU CHAY');
INSERT INTO `menu` (name)
VALUES ('MÓN ĂN THÊM');
INSERT INTO `menu` (name)
VALUES ('NƯỚC GIẢI KHÁT');
-- id: 1 #food

INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Cơm Chay Thập Cẩm',
        'Có thể chọn món',
        30000,
        'https://images.foody.vn/res/g24/237357/s120x120/17445d65-66b4-4f6e-8a3a-5c14b14c-71c55103-201124161040.jpeg',
        1, -- #category default
        4);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Cơm Mắm Thái Chay',
        'Có thể chọn món',
        30000,
        'https://images.foody.vn/res/g24/237357/s120x120/9a2ab615-2ff9-4143-b99f-93356014-55f12a55-210124220243.jpeg',
        1, -- #category default
        4);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Bún Huế Chay',
        'Bao gồm dụng cụ ăn',
        33000,
        'https://images.foody.vn/res/g24/237357/s120x120/abb50afa-f634-48ef-b22e-bf614fa8-f88b3bd8-201124171838.jpeg',
        1, -- #category default
        5);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Bún Riêu Chay',
        'Bao gồm dụng cụ ăn',
        33000,
        'https://images.foody.vn/res/g24/237357/s120x120/0ede3275-c358-4adb-be35-5558fa43-e59c42af-201124163508.jpeg',
        1, -- #category default
        5);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Bún Thịt Nướng Chay',
        'Bao gồm dụng cụ ăn',
        33000,
        'https://images.foody.vn/res/g24/237357/s120x120/973b46f4-ef08-420a-9533-145796a5-39447a6c-210305102659.jpeg',
        1, -- #category default
        5);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Hủ tiếu Chay',
        'Bao gồm dụng cụ ăn',
        33000,
        'https://images.foody.vn/res/g24/237357/s120x120/b53e86d3-683e-4c10-b63a-47b3b1d3-416c352e-201124170633.jpeg',
        1, -- #category default
        5);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Bún Măng Chay',
        'Bao gồm dụng cụ ăn',
        33000,
        'https://images.foody.vn/res/g24/237357/s120x120/fd0810da-64a6-43f9-ab5d-a2c5ed65-a5be1afc-201124191641.jpeg',
        1, -- #category default
        5);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Bún Chả Giò Chay',
        'Bao gồm dụng cụ ăn',
        33000,
        'https://images.foody.vn/res/g24/237357/s120x120/dc96dca0-d8e4-47bb-93e3-f6bb9ad0-f7f6ff0e-201124171040.jpeg',
        1, -- #category default
        5);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Bánh Canh Chay',
        'Bao gồm dụng cụ ăn',
        33000,
        'https://images.foody.vn/res/g24/237357/s120x120/7ec53691-29d7-4ce6-94ef-8ab4085e-de31b50e-210521085407.jpeg',
        1, -- #category default
        5);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Bún Thái Chay',
        'Bao gồm dụng cụ ăn',
        33000,
        'https://images.foody.vn/res/g24/237357/s120x120/0ab192da-a79a-4cb1-baf1-75bf8d84-8b71b80b-220302131319.jpeg',
        1, -- #category default
        5);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Bún Thái Chay',
        'Bao gồm dụng cụ ăn',
        33000,
        'https://images.foody.vn/res/g24/237357/s120x120/0ab192da-a79a-4cb1-baf1-75bf8d84-8b71b80b-220302131319.jpeg',
        1, -- #category default
        5);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Bún Mọc Chay',
        'Bao gồm dụng cụ ăn',
        33000,
        'https://images.foody.vn/res/g24/237357/s120x120/01022d65-d5e7-47b1-bc8e-d8d8810c-10705b3e-210604114133.jpeg',
        1, -- #category default
        5);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Hủ Tiếu Mì Chay',
        'Bao gồm dụng cụ ăn',
        33000,
        'https://images.foody.vn/res/g24/237357/s120x120/6f46de9d-8b4b-4f09-b0fc-93b5bc69-d3043062-211101223103.jpeg',
        1, -- #category default
        5);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Lẩu Thái Nhỏ',
        'Vui lòng đặt trước.',
        130000,
        'https://images.foody.vn/res/g24/237357/s120x120/5037cddf-7e5e-4f77-a676-722740b2-196ef4d4-201209072619.jpeg',
        1, -- #category default
        6);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Lẩu Nấm Nhỏ',
        'Vui lòng đặt trước.',
        130000,
        'https://images.foody.vn/res/g24/237357/s120x120/58c39cc2-e97b-49e1-9ad9-36615771-1341035f-201124190717.jpeg',
        1, -- #category default
        6);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Lẩu Thái Lớn',
        'Vui lòng đặt trước.',
        200000,
        'https://images.foody.vn/res/g24/237357/s120x120/5037cddf-7e5e-4f77-a676-722740b2-196ef4d4-201209072619.jpeg',
        1, -- #category default
        6);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Lẩu Nấm Lớn',
        'Vui lòng đặt trước.',
        200000,
        'https://images.foody.vn/res/g24/237357/s120x120/58c39cc2-e97b-49e1-9ad9-36615771-1341035f-201124190717.jpeg',
        1, -- #category default
        6);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Bì Cuốn Chay',
        '7k 1Cuốn',
        7000,
        'https://images.foody.vn/res/g24/237357/s120x120/3766428f-ce74-4a5b-8acc-398b86f4-d78a6a06-201124192320.jpeg',
        1, -- #category default
        7);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Chả Giò Chay',
        '3 Cuốn 10k',
        10000,
        'https://images.foody.vn/res/g24/237357/s120x120/48b4e1e5-05c9-4d9b-a172-1e176436-8a765c7b-201124172339.jpeg',
        1, -- #category default
        7);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Cơm Thêm',
        'Cơm Thêm',
        3000,
        'https://images.foody.vn/res/g24/237357/s120x120/f27e6845-3c73-4530-8a7f-fb13046c-d4f50958-210125194931.jpeg',
        1, -- #category default
        7);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Cơm Thêm',
        'Cơm Thêm',
        3000,
        'https://images.foody.vn/res/g24/237357/s120x120/f27e6845-3c73-4530-8a7f-fb13046c-d4f50958-210125194931.jpeg',
        1, -- #category default
        7);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Sữa Đậu Nành',
        'Sữa Đậu Nành',
        10000,
        'https://images.foody.vn/res/g24/237357/s120x120/84d8f5d7-de6e-4a9d-a47a-9d37d12c-db624a26-201207091302.jpeg',
        1, -- #category default
        8);
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Sâm Lạnh',
        'Sâm Lạnh',
        12000,
        'https://images.foody.vn/res/g24/237357/s120x120/3f5e12cd-c69b-403f-b252-af877424-6a8abb17-210417190712.jpeg',
        1, -- #category default
        8);

INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Nha Đam Mủ Trôm',
        'Nha Đam Mủ Trôm',
        16000,
        'https://images.foody.vn/res/g24/237357/s120x120/bd1b4f0f-ce7c-4eb8-ab12-252d1109-f1f31240-220515071408.jpeg',
        1, -- #category default
        8);

-- id: 1 #shop_food 10 -> 33
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        10, -- #food change
        100); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        11, -- #food change
        100); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        12, -- #food change
        100); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        13, -- #food change
        100); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        14, -- #food change
        100); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        15, -- #food change
        450); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        16, -- #food change
        24); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        17, -- #food change
        50); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        18, -- #food change
        100); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        19, -- #food change
        100); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        20, -- #food change
        100); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        21, -- #food change
        50); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        22, -- #food change
        20); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        23, -- #food change
        40); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        24, -- #food change
        180); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        25, -- #food change
        15); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        26, -- #food change
        500); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        27, -- #food change
        700); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        28, -- #food change
        400); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        29, -- #food change
        200); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        30, -- #food change
        170); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        31, -- #food change
        150); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        32, -- #food change
        170); -- #quantity default set
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (3, -- #shop default
        33, -- #food change
        140);
-- #quantity default set

-- #menu


-- sang
-- user: 3 -> 3
-- location: 4 -> 4
-- shop: 4
-- menu: 9 -> 10
-- food: 34 -> 49

-- id: 2 #category
INSERT INTO `category` (`name`)
VALUES ('Nước uống');

-- id: 4 #location
INSERT INTO `location` (name, ward_id)
VALUES ('22, Đường Đặng Văn Bi', 26824);

-- id: 3 #user
INSERT INTO `user` (email, password, name, dob, gender, phone, status, role_id, location_id)
VALUES ('sangdragon69@gmail.com',
        '123456',
        'Nguyễn Đức Sáng',
        '2001-06-09 22:41:11.5447124',
        'MALE',
        '0978103469',
        1, -- #status active default
        1, -- #role
        4);
-- #location

-- id: 4 #shop
INSERT INTO `shop` (name, phone, description, open_time, image, user_boss_id, location_id)
VALUES ('Sinh tố & Nước ép - Vitamin Quán',
        '0965073392',
        '22, Đặng Văn Bi, Bình Thọ, Thủ Đức, TP. HCM',
        '16:30 - 21:00',
        'https://lh5.googleusercontent.com/p/AF1QipPrvT83wZsGk1zrfRTLqGm-EJtARjx4Lqn3h5D6=s509-k-no',
        3, -- #user
        4);
-- #location

-- id: 9 #menu
INSERT INTO `menu` (name)
VALUES ('Sinh tố');

-- id: 10 #menu
INSERT INTO `menu` (name)
VALUES ('Nước ép');

-- id: 34 #food #menu_id: 9
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Sinh tố dâu',
        'Sinh tố dâu được làm từ nước dâu nguyên chất, thể tích 400ml, ít đá nhiều sinh tố, vị ngọt, thơm, ngon.',
        15000,
        'https://cdn.tgdd.vn/Files/2019/03/29/1157565/tu-lam-sinh-to-dau-tai-nha-don-gian-thom-ngon-beo-min-202201251157369827.jpg',
        2, -- #category default
        9);

-- id: 35 #food #menu_id: 9
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Sinh tố cam',
        'Sinh tố cam được làm từ nước cam nguyên chất, thể tích 400ml, ít đá nhiều sinh tố, vị ngọt - chua.',
        15000,
        'https://dvpmarket.com/resources/uploads/images/2018/11/sinh-to-cam-sua-chua.jpg',
        2, -- #category default
        9);

-- id: 36 #food #menu_id: 9
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Sinh tố cam cà rốt',
        'Sinh tố cam cà rốt được làm từ nước cam nguyên chất và nước cà rốt, thể tích 500ml, ít đá nhiều sinh tố, vị ngọt - chua, thom vị và rốt hòa quyện vị cam.',
        20000,
        'https://hocphache.com.vn/wp-content/uploads/2017/11/hinh-sinh-to-cam-ca-rot.jpg',
        2, -- #category default
        9);

-- id: 37 #food #menu_id: 9
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Sinh tố xoài',
        'Sinh tố xoài là một trong những thức uống bán chạy nhất quán chúng tôi, vị ngọt, ngon từng cm sinh tố kèm theo đó là vị thơm không thể tả.',
        17000,
        'https://cdn.dayphache.edu.vn/wp-content/uploads/2016/02/cach-lam-sinh-to-xoai-sua-dac.jpg',
        2, -- #category default
        9);

-- id: 38 #food #menu_id: 9
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Sinh tố khoai môn',
        'Sinh tố khoai môn có vị bùi, ngọt, thơm, kết hợp nguyên liệu dừa, đậu phộng.',
        17000,
        'https://cdn.dayphache.edu.vn/wp-content/uploads/2016/11/lam-sinh-to-khoai-mon.jpg',
        2, -- #category default
        9);

-- id: 39 #food #menu_id: 9
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Sinh tố dưa gang',
        'Sinh tố dưa gang thơm lừng, mát lạnh.',
        17000,
        'https://cdn.huongnghiepaau.com/wp-content/uploads/2021/07/sinh-to-dua-gang-ngot-thom.jpg',
        2, -- #category default
        9);

-- id: 40 #food #menu_id: 9
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Sinh tố bơ',
        'Sinh tố ngon, thơm, không đắng, béo bùi.',
        16000,
        'https://cdn.beptruong.edu.vn/wp-content/uploads/2021/03/sinh-to-bo-dua.jpg',
        2, -- #category default
        9);

-- id: 41 #food #menu_id: 9
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Sinh tố mãng cầu',
        'Sinh tố mãng cầu là một thức uống quen thuộc, nhưng đến với chúng tôi bạn sẽ biết được thế tầm cao của sinh tố mãng cầu.',
        18000,
        'https://cookbeo.com/media/2021/06/sinh-to-mang-cau/sinh-to-mang-cau-5x7.jpg',
        2, -- #category default
        9);

-- id: 42 #food #menu_id: 10
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Nước ép cam',
        'Nước ép cam thơm ngon mời bạn ăn nha, tôi đây đang chờ bạn đấy cùng nau ăn nè, ăn nha',
        15000,
        'https://shipdoandemff.com/wp-content/uploads/2021/04/%C3%89p-cam-Th%C6%A1m.jpg',
        2, -- #category default
        10);

-- id: 43 #food #menu_id: 10
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Nước ép cam',
        'Nước ép cam thơm ngon mời bạn ăn nha, tôi đây đang chờ bạn đấy cùng nau ăn nè, ăn nha',
        14000,
        'https://cdn.cet.edu.vn/wp-content/uploads/2020/06/cach-lam-nuoc-ep-dua-hau.jpg',
        2, -- #category default
        10);

-- id: 44 #food #menu_id: 10
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Nước dừa',
        'Nước dừa nguyên chất, ngọt, thơm, ngon.',
        15000,
        'https://vinmec-prod.s3.amazonaws.com/images/20200513_094457_911488_loi-ich-cua-nuoc-du.max-1800x1800.jpg',
        2, -- #category default
        10);

-- id: 45 #food #menu_id: 10
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Nước ép dứa',
        'Nước dứa ngon, ngọt, thơm, không chát cho các cư dân đam mê dứa đây.',
        15000,
        'https://www.hoangbeo.com/wp-content/uploads/nuoc-ep-dua.jpg',
        2, -- #category default
        10);

-- id: 46 #food #menu_id: 10
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Nước ép dứa',
        'Nước dứa ngon, ngọt, thơm, không chát cho các cư dân đam mê dứa đây.',
        15000,
        'https://www.hoangbeo.com/wp-content/uploads/nuoc-ep-dua.jpg',
        2, -- #category default
        10);

-- id: 47 #food #menu_id: 10
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Nước ép dứa',
        'Nước dứa ngon, ngọt, thơm, không chát cho các cư dân đam mê dứa đây.',
        15000,
        'https://www.hoangbeo.com/wp-content/uploads/nuoc-ep-dua.jpg',
        2, -- #category default
        10);

-- id: 48 #food #menu_id: 10
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Nước ép cà rốt',
        'Nước ép cà rốt ngon, bổ dưỡng, đẹp da..',
        15000,
        'https://www.annacoffee.vn/image/cache/catalog/san-pham/menu-quan/carot-cr-800x800.jpg',
        2, -- #category default
        10);

-- id: 49 #food #menu_id: 10
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Nước ép chanh dây mật ong',
        'Nước ép chanh dây mật ong thơm ngọt chua, hài hòa, đậm vị ngọt mật ong, đủ vị thanh chua của chanh dây.',
        15000,
        'https://cdnetworks.anchay.vn/media/2021/11/pdqmwdhbnmopfcfeske5ovztqdvvg3oefzx_88d35bea3a0846b58eae8c40d6b11095_grande.jpg',
        2, -- #category default
        10);


INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (4, -- #shop default
        34, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (4, -- #shop default
        35, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (4, -- #shop default
        36, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (4, -- #shop default
        37, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (4, -- #shop default
        38, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (4, -- #shop default
        39, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (4, -- #shop default
        40, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (4, -- #shop default
        41, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (4, -- #shop default
        42, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (4, -- #shop default
        43, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (4, -- #shop default
        44, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (4, -- #shop default
        45, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (4, -- #shop default
        46, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (4, -- #shop default
        47, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (4, -- #shop default
        48, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (4, -- #shop default
        49, -- #food change
        100);
-- #quantity default set


-- nam
-- user: 4 -> 4
-- location: 5 -> 5
-- shop: 5 -> 6
-- menu: 11 -> 23
-- food: 50 -> 69


-- nam
-- user: 4 -> 4
-- location: 5 -> 5
-- shop: 5 -> 6
-- menu: 11 -> 23
-- food: 50 -> 69

-- id: 5 #location
INSERT INTO `location` (name, ward_id)
VALUES ('193 Đồng Khởi, Phường Bến Nghé, Quận 1, Thành phố Hồ Chí Minh', 26740);

-- id: 4 #user
INSERT INTO `user` (email, password, name, dob, gender, phone, status, role_id, location_id)
VALUES ('nam502@gmail.com',
        'nam502',
        'Nguyễn Phương Nam',
        '2001-02-07 22:41:11.5447124',
        'MALE',
        '0368475944',
        1, -- #status active default
        1, -- #role
        5);
-- #location

-- id: 5 #shop
INSERT INTO `shop` (name, phone, description, open_time, image, user_boss_id, location_id)
VALUES ('The Pizza Company - Vincom Plaza Huế',
        '0364837465',
        'Tầng 1, Tầng 1, Vincom Plaza, 50A Hùng Vương, P. Phú Nhuận, Tp. Huế, Huế',
        '10:00 - 20:45',
        'https://images.foody.vn/res/g75/742186/prof/s640x400/image-7404fd13-220506164935.jpeg',
        4, -- #user
        5);

-- id: 11 #menu
INSERT INTO `menu` (name)
VALUES ('PIZZA CÔNG THỨC ĐẶC BIỆT');

-- id: 12 #menu
INSERT INTO `menu` (name)
VALUES ('PIZZA THẬP CẨM');

-- id: 13 #menu
INSERT INTO `menu` (name)
VALUES ('PIZZA TRUYỀN THỐNG');

-- id: 14 #menu
INSERT INTO `menu` (name)
VALUES ('SƯỜN NƯỚNG');

-- id: 15 #menu
INSERT INTO `menu` (name)
VALUES ('MỲ Ý - PASTA');

-- id: 16 #menu
INSERT INTO `menu` (name)
VALUES ('PIZZA NHÂN NHỒI');

-- id: 17 #menu
INSERT INTO `menu` (name)
VALUES ('NUI BỎ LÒ & NUI BỎ LÒ PHÔ MAI');

-- id: 50 #food
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Pizza Hải Sản Pesto Xanh (Secret Recipe Seafood Pesto)',
        'Tôm, cua, mực và bông cải xanh trên nền sốt Pesto. Fresh shrimp, crab, squid and broccoli on green Pesto sauce',
        169000,
        'https://images.foody.vn/res/g71/706160/s400x400/1518b72b-e5d2-4a42-a3a9-928533d6-860e8ecc-220101084420.jpeg',
        1, -- #category default
        11);

-- id: 51 #food
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Pizza 5 loại thịt đặc biệt (Meat Deluxe)',
        'Các loại xúc xích đặc trưng Ý, giăm bông, thịt xông khói và sốt cà chua. Chunky pork and Italian sausages, pepperoni, ham, bacon, bacon bits with Pizza sauce',
        129000,
        'https://images.foody.vn/res/g71/706160/s400x400/2018618165847-pizza-5-loai-thit-dac-biet.jpg',
        1, -- #category default
        12);

-- id: 52 #food
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Pizza phủ phô mai Ý (Double Cheese)',
        'Pizza với vô vàn phô mai thơm béo trên nền sốt cà chua. Pizza with premium cheese from Italy and Pizza sauce.',
        119000,
        'https://images.foody.vn/res/g71/706160/s400x400/9f170d98-6b89-447a-8347-372e4a9c-1f8e68f9-220101092749.jpeg',
        1, -- #category default
        13);

-- id: 53 #food
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Sườn Siêu Sao (5 miếng)',
        '"Junior Star (5pcs) Combo Sườn nướng BBQ dùng với khoai tây chiên và Salad. Pork rack ribs served with potatoes and salad"',
        319000,
        'https://images.foody.vn/res/g71/706160/s400x400/2018618172148-1.jpg',
        1, -- #category default
        14);

-- id: 54 #food
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Mỳ Ý sốt bò bằm',
        'Sốt thịt bò bằm đặc trưng kết hợp cùng mỳ Ý. Italian-style mince beef sauce finely mixed with pasta',
        129000,
        'https://images.foody.vn/res/g71/706160/s400x400/2018521103955-my-y-thit-bo-bam.jpg',
        1, -- #category default
        15);

-- id: 55 #food
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Pizza 5 Loại Thịt Đặc Biệt và Rau Củ Nhân Nhồi (Super Deluxe Puff)',
        'Siêu thượng hạng với nhiều loại thịt và rau phong phú với sốt cà chua. Pork sausages, Italian sausages, pepperoni, ham, bacon and other ingredients with Pizza sauce',
        89000,
        'https://images.foody.vn/res/g71/706160/s400x400/201861817254-201861104149-pizzapuff.jpg',
        1, -- #category default
        16);

-- id: 56 #food
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Nui Bỏ Lò Phô Mai Gà Bơ Tỏi & Nấm Sốt Kem',
        'Garlic Chicken & Mushroom With Cream Sauce Cheese Baked Macaroni',
        59000,
        'https://images.foody.vn/res/g71/706160/s400x400/0303a702-bd7f-4b92-a456-cad378fa-85dbd532-211118204938.jpeg',
        1, -- #category default
        17);

-- id: 57 #food
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Pizza gà nướng 3 vị (Chicken Trio)',
        'Gà nướng, gà bơ tỏi, gà ướp sốt, nấm, sốt cà chua và ớt xanh, đỏ. Grilled chicken, garlic butter chicken, marinade chicken, mushroom and Pizza sauce, plus red and green chili',
        129000,
        'https://images.foody.vn/res/g71/706160/s400x400/cad55272-123e-4730-aceb-89e9bbcc-a43890b2-220101092137.jpeg',
        1, -- #category default
        11);

-- id: 58 #food
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Pizza gà nướng dứa (Chicken Caldo)',
        'Gà, dứa kết hợp với vị cay của ớt và vị chua đặc trưng của sốt cà chua. Grilled chicken go with pineapple, red and green capsicums with Pizza sauce.',
        119000,
        'https://images.foody.vn/res/g71/706160/s400x400/f74f3139-a451-494d-a642-3b15386d-56f21104-220101092930.jpeg',
        1, -- #category default
        11);

-- id: 59 #food
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Cánh gà nướng BBQ (6 miếng)',
        'BBQ Chicken Wings (6pcs) - Với cánh gà tươi cùng lớp nước sốt đậm đà, mỗi cánh gà được nướng chín đến khi lớp da thật mỏng, thật giòn cho đến khi ngậy mùi hương đặc trưng.',
        129000,
        'https://images.foody.vn/res/g71/706160/s400x400/2018521104819-canh-ga-nuong-bbq.jpg',
        1, -- #category default
        15);

-- id: 60 #food
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Bánh kẹp nướng Mexico',
        'Phô mai, sốt cà chua, nhân gà nướng bơ tỏi, ớt sừng dùng kèm sốt cocktail. Grilled garlic-butter chicken, Pizza sauce, chili served with cocktail sauce',
        109000,
        'https://images.foody.vn/res/g71/706160/s400x400/201852110488-banh-kep-nuong-mexico.jpg',
        1, -- #category default
        15);

-- id: 1 #shop_food
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (5, -- #shop default
        50, -- #food change
        100); -- #quantity default set


INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (5, -- #shop default
        51, -- #food change
        100); -- #quantity default set


INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (5, -- #shop default
        52, -- #food change
        100); -- #quantity default set


INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (5, -- #shop default
        53, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (5, -- #shop default
        54, -- #food change
        100); -- #quantity default set


INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (5, -- #shop default
        55, -- #food change
        100); -- #quantity default set


INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (5, -- #shop default
        56, -- #food change
        100); -- #quantity default set


INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (5, -- #shop default
        57, -- #food change
        100); -- #quantity default set


INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (5, -- #shop default
        58, -- #food change
        100); -- #quantity default set


INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (5, -- #shop default
        59, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (5, -- #shop default
        60, -- #food change
        100);
-- #quantity default set


-- id: 6 #shop
INSERT INTO `shop` (name, phone, description, open_time, image, user_boss_id, location_id)
VALUES ('Nướng Cay Cute - Ăn Vặt & Trà Sữa',
        '0364581740',
        '40 Bà Triệu, P. Phú Hội, Tp. Huế, Huế',
        '09:30 - 22:00',
        'https://images.foody.vn/res/g73/725143/prof/s640x400/foody-upload-api-foody-mobile-cu-ffd77575-220417130548.jpeg',
        4, -- #user
        5);

-- id: 18 #menu
INSERT INTO `menu` (name)
VALUES ('ĂN VẶT ĂN LÀ GHIỀN');

-- id: 19 #menu
INSERT INTO `menu` (name)
VALUES ('NƯỚNG CAY BBQ');

-- id: 20 #menu
INSERT INTO `menu` (name)
VALUES ('BÚN ĐẬU MẮM TÔM');

-- id: 21 #menu
INSERT INTO `menu` (name)
VALUES ('ỐP LA- BÒ KHO - XÔI MẶN');

-- id: 22 #menu
INSERT INTO `menu` (name)
VALUES ('CƠM CHIÊN_MÌ XÀO-MÌ CAY');

-- id: 23 #menu
INSERT INTO `menu` (name)
VALUES ('LẨU - UM');

-- id: 61 #food
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Kimbap Chiên Xù',
        'Vui lòng chọn nước mắm ăn kèm (mắm nêm hợc nước mắm ớt tỏi)',
        27000,
        'https://images.foody.vn/res/g73/725143/s400x400/95c2286d-e94d-4352-bf50-6c5dcbf3-daebc777-220428184702.jpeg',
        1, -- #category default
        18);

-- id: 62 #food
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Mỳ cay thập cẩm',
        'Ba chỉ bò Mỹ, cá viên, xúc xích, chả thịt Không kèm tô, vui lòng chọn mua tô giấy thêm ạ',
        59000,
        'https://images.foody.vn/res/g73/725143/s400x400/4a6f1284-3306-47d2-93c7-6b15d070-004f7609-220427190003.jpeg',
        1, -- #category default
        19);

-- id: 63 #food
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('COMBO 3 NGƯỜI BẠN: 1cơm đùi Thái, cơm gà M, cơm đùi tiêu+ 3 trà đào',
        '1 Cơm đùi gà sốt tiêu đen, 1 cơm đùi gà cay sốt thái, 1 cơm gà miếng Yaki, 3 trà đào đặc biệt.',
        207000,
        'https://images.foody.vn/res/g91/903634/s400x400/f3ae4649-bd56-4e98-af8b-5b223ffd-58ac6219-201222164329.jpeg',
        1, -- #category default
        22);

-- id: 64 #food
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Hộp bò hầm 0.5kg dẻ sườn bò rút xương',
        'Hộp dẻ sườn bò rút xương có nước châms, bạn nên ăn với bánh mì, mì gói, bún hoặc cơm',
        171000,
        'https://images.foody.vn/res/g91/903634/s400x400/939f19cb-d3b2-4356-8ae9-fd50bdf9-4df4ed41-220228122524.jpeg',
        1, -- #category default
        23);

-- id: 65 #food
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Mì chỉ khô Hoành Thánh Tôm sốt X.O Đặc Biệt tặng 1 ly hồng trà chanh',
        '2 vắt mì chỉ và 4 viên hoành thánh tôm làm khô',
        80000,
        'https://images.foody.vn/default/s400x400/shopeefood-deli-dish-no-image.png',
        1, -- #category default
        22);

-- id: 66 #food
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Combo 6: Cánh Gà Rán HQ (4pcs) + Đùi Gà Rán HQ (2pcs) + Chicken Popcorn + Khoai Tây Chiên + 4 Pepsi',
        'Cánh Gà Rán HQ (4pcs) Đùi Gà Rán HQ (2pcs) Chicken Popcorn Khoai Tây Chiên 4 Pepsi',
        250000,
        'https://images.foody.vn/res/g103/1026328/s400x400/590f445a-07c6-4518-bd5d-0dfe0cd8-9d805f37-211228143420.jpeg',
        1, -- #category default
        19);

-- id: 67 #food
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Gà Rán Popcorn Chicken + Tokbokki',
        'Gà rán lóc xương giòn rụm và Tobbokki cùng các loại sốt',
        70000,
        'https://images.foody.vn/res/g103/1026328/s400x400/908f85c6-9ddd-4f4a-a8b4-5f0cb8ec-46a354fd-220202074011.jpeg',
        1, -- #category default
        20);

-- id: 68 #food
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Bánh Bao Kẹp Gà Rán',
        'Bánh bao kẹp gà rán không xương sốt Spicy Korean',
        45000,
        'https://images.foody.vn/res/g103/1026328/s400x400/1ea6903a-8227-4bd1-89c8-524a76b3-80511f44-220405174251.jpeg',
        1, -- #category default
        22);

-- id: 69 #food
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Gà Popcorn phủ Phomai tan chảy',
        'Chicken Popcorn sốt Korean Spicy phủ phomai Mozzarella tan chảy',
        99000,
        'https://images.foody.vn/res/g103/1026328/s400x400/78dad381-a309-460a-b149-154b6e22-4c2fec0e-220202073852.jpeg',
        1, -- #category default
        21);

-- id: 1 #shop_food
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (6, -- #shop default
        60, -- #food change
        100); -- #quantity default set


INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (6, -- #shop default
        61, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (6, -- #shop default
        62, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (6, -- #shop default
        63, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (6, -- #shop default
        64, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (6, -- #shop default
        65, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (6, -- #shop default
        66, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (6, -- #shop default
        67, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (6, -- #shop default
        68, -- #food change
        100); -- #quantity default set

INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (6, -- #shop default
        69, -- #food change
        100);
-- #quantity default set

-- viet
-- user: 5 -> 5
-- location: 6 -> 6
-- shop: 7
-- menu: 24 -> 24
-- food: 70 -> 70