/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.security.SecureRandom;
import java.util.Base64;

/**
 *
 * @author ADMIN
 */
public class CookieUtils {
    private static final SecureRandom SECURERANDOM = new SecureRandom(); //threadsafe
    private static final Base64.Encoder BASE64ENCODER = Base64.getUrlEncoder(); //threadsafe

    public static String generateNewToken() {
        byte[] randomBytes = new byte[24];
        SECURERANDOM.nextBytes(randomBytes);
        return BASE64ENCODER.encodeToString(randomBytes);
    }
}
