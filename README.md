https://www.baeldung.com/the-persistence-layer-with-spring-and-jpa

https://docs.spring.io/spring-data/jpa/docs/current/reference/html/#reference

I use Spring Boot, but your solution helped me, thanks. I added characterEncoding=utf8 parameter to the spring.datasource.url=jdbc:mysql://localhost:3306/mydatabase?useUnicode=true&characterEncoding=utf8&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC line in application.properties file. –
 Feb 19, 2019 at 5:27

 github:
 kaitonguyensang
 NachiLuong
 namcao502
 ngocdiem138

 gmail:
 sangdragon69@gmail.com
 lqtrung20122001@gmail.com
 namcao502@gmail.com

 bỏ proj lên git diễm: ngocdiem138

Nam: billHistory
Sáng: voucher
Việt: shop
Diễm: home
Trung: edit profile

Diễm: header
Sáng: footer

https://stackoverflow.com/questions/56457782/could-not-load-requested-class-exception-for-a-class-implementing-spring-securit

https://stackoverflow.com/questions/64930299/spring-boot-nested-native-sql-query-is-not-working

https://docs.spring.io/spring-security/site/docs/5.4.x/guides/helloworld-xml.html

    @Query(value = "" +
            "SELECT tm.money " +
            "FROM (" +
            "       SELECT tm2 " +
            "       FROM TRANSPORTMONEY tm2 " +
            "       ORDER BY tm2.distance ASC) AS tm " +
            "WHEN tm.distance = ?1",
            nativeQuery = true)