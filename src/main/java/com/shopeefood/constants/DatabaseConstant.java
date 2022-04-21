package com.shopeefood.constants;

import org.springframework.beans.factory.annotation.Value;

public class DatabaseConstant {

    @Value("${database.drive}")
    public static String DRIVER;

    @Value("${database.url}")
    public static String URL;

    @Value("&{database.username}")
    public static String USERNAME;

    @Value("${database.password}")
    public static String PASSWORD;
}
