package edu.kust.utils;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class BCryptPasswordEncoderUtils {

    public static BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    public static String encodingPassword(String password){return passwordEncoder.encode(password);}

}
