package com.pgw.config;

import java.io.FileWriter;
import java.io.IOException;


public class AlipayConfig {

	public static String app_id = "9021000139630692";

    public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCXTsYTHHLNFMr3hKJWmchzyJtfiVxFbSgQ1EIxHVOWlFx+3iFZwcWImU9mJt3saZMoBZvTwxL/aWHit6JdS3cmOuvLrymaSf8hNmL1ml7uAfjw8ku33A+MJS1sEQVf3WhI/D3RLIWejt7O1oeguzBvcF2EqP5EW78s8imeN6bavtp4yMyZhpD1boOu653MS6v56QoQATRyH580aUudoy0iZLrv1e512hT2AE0wt1qlrirejyDgF8VXX+MI5xACORhP9aPqg96dy9wn1WparBUB1bDgM9D9pzk36iJTZ14YThsp9lMoEp0kgnWKHy5i3gqgbyDsrbC5/npM9YXHYHbbAgMBAAECggEAR1QUXkgH+pP1xs+Y8/hVHfgQ/u2zOOtnet+FQMAReqgAHrK6yCRn6ahUXNSvw9ZVUAWs2xxYJV3ZjlaBTTfZOIWISSIPG7QMeOy5pAyc+dimMXgXp9ou3iNckVhIz1OB6P44ahZx+zhg4uMRVv1HrREslPBRxYn2yspyQir8FpwtCdQEgVTci8b9MnnW0p2/PUl1M9OXsbc44vgo11Qkf01yUqfw62ue15fbUMm8zJyz0semNpR3hIZBomq34vhWwewxc/icaZhhPrJfrfKAVl3HsdVQETqfBw2X8C4qbu1Eb4qBXgfkmZj+1tui6eoIyEuS4b+dZ8NR/HM8G5es8QKBgQDg/0m0UfPpwHrQwxEZIJMFRmespGNcKnOn81BKkjn7sYS01UXyuJSjaUvXae7DIA7OJZ2XR8ZmYJNISp34SYc1ty74SgEZenmqKjdbQs5CxmdiIxt3fdBiLG0rSid6n54JPwD3hqZYKNNfLv2C7tySgifkoWatBcevsoKAEnZswwKBgQCsKBwQhVfKHGuqbJYr+ObhdTZ0SalmUXmUx8Nzi+uvPtxIF/mX9opfqphyBpx2n4VS1UUWKtPcMUJ/iuq4KxueUSBU3q5eVqnloiRGSvLwsWymXAGnm7VDMrnieujYkO1cB9HLbC6wpAlekAJ5bvn7JwRl68AypmlfPehwv5SMCQKBgAFiMH7WXiyazWaJPIquA5lttGeAX0gKzslCmsTKn2an0cwW36Y9clSK6jd55Ej44n5sBssOWu74Ow+fvdbwBM/Uv4oxUk5ozWS5e7uo7oHEnJAi7SFP+b8QzN8ORq3fW2ZtJ8Fd55n1Lk+Qh2iNtXeFK1+hinMX7QFslJbbBjVnAoGAWsokUsofjCUE2rG9WJ9BE3F/MECQp7ccCUx4VP1bY+YgwZxzMqMAQodzMd8usJhb9V0nvBMF+7+2tBCMzGdff1SFWny9NF875jBmNPPdvvWyuOEYtk21gCTGRxxOo7d6lehByafZz6oSjt4fj+7ownzHIwD7MTr1oxbA+ITwUBECgYBbKfFwqzlHPKTm7KFGIEX2RblWUGpyCZZ4ym6JbbuKDoOtkB0Eikdh3VaiLhYLjFs7jUU8VNZK2dq3t3/HPgCyVCDgP8r5KAVwPcxICIFj2ZM8i/KHWl2LBarUiv/KuDV8OBd934XGmeIOCjObKdzK+/kilu8uN7HYpvCh30BQUA==";

    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4CczlAfJ8LhV0ofDDbmGWnduzBnQrEhdTP4OTjfK5gQou2nH9JQSgaIaKA/9X3F5QvYC2A+zMMgwqLsBa7H+TXLCuPlyKxfxi6nFK3Gki2hB76doJO6bHefrz3vMUfN2M5uKe19Y2Fn4NLKHh+UDxjJMjirlYY7a044aLS16KBnvVRONgwxs+gIBBGOvy1+jqfwap9glYteVyN3x5H7ic6jIqxzHS5/860zAUSmsAO8O8R88rXRN0qFI838WFlN3Zw6qUEDnvwXNmdaG2nn7BunFp16ZB4G7o3ON4IFWKxDE9mBVrhgY5/ncG4UcrGH5Mz8w9lCNgc4J3OyV3vSBjwIDAQAB";

	public static String notify_url = "http://���̹������ʵ�ַ/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";


	public static String return_url = "http://121.36.4.88:8081/ustbh1/paysumbit";
//	public static String return_url = "https://cn.bing.com";

	public static String sign_type = "RSA2";
	

	public static String charset = "utf-8";
	

	public static String gatewayUrl = "https://openapi-sandbox.dl.alipaydev.com/gateway.do";
	

	public static String log_path = "C:\\";



    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

