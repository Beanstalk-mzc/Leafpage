package com.leafpage.util;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

public class SHA256 {
    //해시값을 반환하는 메소드
    public static String getSHA256(String input) {
        StringBuffer result = new StringBuffer();
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] salt = "Hello! this is Salt.".getBytes();
            digest.reset();
            digest.update(salt);
            byte[] chars = digest.digest(input.getBytes(StandardCharsets.UTF_8));
            for (int i = 0; i < chars.length; i++) {
                String hex = Integer.toHexString(0xff & chars[i]);
                if (hex.length() == 1) result.append("0");
                result.append(hex);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result.toString();
    }
}
