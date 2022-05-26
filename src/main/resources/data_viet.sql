-- id: 1 #category
INSERT INTO `category` (`name`)
VALUES ('Đồ ăn');

-- id: 1 #role
INSERT INTO `role` (name, description)
VALUES ('customer', 'customer');

-- id: 1 #location
INSERT INTO `location` (name, ward_id)
VALUES ('10/15/16 Tổ 1, Khu Phố 2, Đường 79', 26848);

-- id: 1 #user
INSERT INTO `user` (email, password, name, dob, gender, phone, status, role_id, location_id)
VALUES ('doquocviet.sept3rd@gmail.com',
        '123456',
        'Đỗ Quốc Việt',
        '2022-05-25 22:41:11.5447124',
        'MALE',
        '0393014871',
        1, -- #status active default
        1, -- #role
        1);
-- #location

-- id: 1 #shop
INSERT INTO `shop` (name, phone, description, open_time, image, user_boss_id, location_id)
VALUES ('Ăn Vặt Goodfood Cô Liên - Cá Viên Chiên & Trà Chanh',
        '0393014871',
        '10/15/16 Tổ 1, Khu Phố 2, Đường 79, P. Phước Long B, Quận 9, TP. HCM',
        '09:00 - 23:00',
        'https://images.foody.vn/res/g112/1111622/prof/s640x400/file_restaurant_photo_2zwu_16353-7ab454d9-211027164936.jpg',
        1, -- #user
        1);
-- #location

-- id: 1 #menu
INSERT INTO `menu` (name)
VALUES ('ĂN VẶT GOODFOOD CÔ LIÊN');

-- id: 1 #food
INSERT INTO `food` (name, description, price, image, category_id, menu_id)
VALUES ('Cá viên Xike chiên -4 viên',
        'Cá Viên Chiên Xike từ bịch Cá Viên Sakura hàng của Nhật,khác với những loại cá viên thông thường,thịt cá đầy,không bột,xiu ngon(1 cây 4 viên) chiên sẵn, BESTSALER',
        6000,
        'https://images.foody.vn/res/g112/1111622/s120x120/3fd8b098-e354-47e6-bb0d-d2e7db54-a56c23f7-211018142836.jpeg',
        1, -- #category default
        1);
-- #menu

-- id: 1 #shop_food
INSERT INTO `shop_food` (shop_id, food_id, quantity)
VALUES (1, -- #shop default
        1, -- #food change
        100); -- #quantity default set
