package com.cheery.tools;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.json.JSONObject;

public class GetMsgCode {

    //api路径
    private static final String QUERY_PATH = "https://api.miaodiyun.com/20150822/industrySMS/sendSMS";

    //自己的id
    private static final String ACCOUNT_SID = "f036ee0671bc4193ad79723ea4e28a0a";

    //自己的密钥
    private static final String AUTH_TOKEN = "ba1dc823e3b948cf841cf6ce13ae791f";

    /**
     * 随机生成一个1000以内的编码就是我们发送的验证码
     */
    public static String smsCode() {
        String random = (int) ((Math.random() * 9 + 1) * 1000) + "";
        return random;
    }

    //生成md5
    public static String getMD5(String sid, String token, String timestamp) {
        StringBuilder result = new StringBuilder();//字符串拼接对象
        String source = sid + token + timestamp;//来源
        //获取某个类的实例
        try {
            //java自带的加密类，以MD5加密
            MessageDigest digest = MessageDigest.getInstance("MD5");
            //要进行加密的东西
            byte[] bytes = digest.digest(source.getBytes());
            for (byte b : bytes) {
                String hex = Integer.toHexString(b & 0xff);
                if (hex.length() == 1) {
                    result.append("0" + hex);
                } else {
                    result.append(hex);
                }
            }
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return result.toString();
    }

    //定义一个请求参数拼接方法
    public static String getQueryArgs(String accountSid, String smsContent, String to, String timestamp, String sig, String respDataType) {
        return "accountSid=" + accountSid + "&smsContent=" + smsContent + "&to=" + to + "&timestamp=" + timestamp + "&sig=" + sig + "&respDataType=" + respDataType;
    }

    //获取时间戳
    public static String getTimestamp() {
        return new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
    }

    //根据相应的手机号发送验证码
    public static String getCode(String phone) {
        String rod = smsCode();//随机生成验证码
        String timestamp = getTimestamp();//获取现在的时间戳
        String sig = getMD5(ACCOUNT_SID, AUTH_TOKEN, timestamp);
        //设置短信的发送内容
        String tamp = "【小白网络】尊敬的用户，您的验证码为：:" + rod + "";
        OutputStreamWriter out = null;
        BufferedReader br = null;
        StringBuilder result = new StringBuilder();
        try {
            URL url = new URL(QUERY_PATH);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("POST");
            connection.setDoInput(true);//设置是否允许数据写入
            connection.setDoOutput(true);//设置是否允许参数数据输出
            connection.setConnectTimeout(5000);//设置链接响应时间
            connection.setReadTimeout(10000);//设置参数读取时间
            connection.setRequestProperty("Content-type", "application/x-www-form-urlencoded");
            //提交请求
            out = new OutputStreamWriter(connection.getOutputStream(), "UTF-8");
            String args = getQueryArgs(ACCOUNT_SID, tamp, phone, timestamp, sig, "JSON");
            out.write(args);
            out.flush();
            //读取返回参数
            br = new BufferedReader(new InputStreamReader(connection.getInputStream(), "UTF-8"));
            String temp = "";
            while ((temp = br.readLine()) != null) {
                result.append(temp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        JSONObject json = new JSONObject(result.toString());
        String respCode = json.getString("respCode");
        String defaultRespCode = "00000";
        if (defaultRespCode.equals(respCode)) {
            return rod;
        } else {
            return defaultRespCode;
        }
    }
}
