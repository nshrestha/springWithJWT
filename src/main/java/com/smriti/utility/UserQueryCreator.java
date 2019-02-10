package com.smriti.utility;

public class UserQueryCreator {

    public static String createQueryToFetchAllUsers() {
        return "SELECT u.name, u.email_address, u.username, u.status" +
                " FROM user u";
    }
}
