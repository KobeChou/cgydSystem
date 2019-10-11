package com.action;

import com.model.TUser;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.util.MerchantApiUtil;
import com.util.PayConfigUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.ServletActionContext;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.net.InetAddress;
import java.net.URLDecoder;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class PayAction  extends ActionSupport{
    private String yuDingID;

    public String getYuDingID() {
        return yuDingID;
    }

    public void setYuDingID(String yuDingID) {
        this.yuDingID = yuDingID;
    }

    public String scanPay(){
        Map<String, Object> paramMap = new HashMap<String, Object>();

        String orderPriceStr = "0.5"; // 订单金额 , 单位:元
        paramMap.put("orderPrice", orderPriceStr);
        String payWayCode = "ALIPAY"; // 支付方式编码 支付宝: ALIPAY  微信:WEIXIN
        paramMap.put("payWayCode", payWayCode);
        long orderNoLong = System.currentTimeMillis();
        String orderNo = String.valueOf(orderNoLong);    // 订单编号
        paramMap.put("orderNo", orderNo);

        Date orderDate = new Date();//订单日期
        String orderDateStr = new SimpleDateFormat("yyyyMMdd").format(orderDate);// 订单日期
        paramMap.put("orderDate", orderDateStr);

        Date orderTime = new Date();//订单时间
        String orderTimeStr = new SimpleDateFormat("yyyyMMddHHmmss").format(orderTime);// 订单时间
        paramMap.put("orderTime", orderTimeStr);

        paramMap.put("payKey", PayConfigUtil.readConfig("payKey"));
        String productName = ""; // 商品名称
        try {
            productName = URLDecoder.decode("sport palces book", UTF_8);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        paramMap.put("productName", productName);

        String orderIp = PayConfigUtil.readConfig("orderIp"); // 下单IP
        paramMap.put("orderIp", orderIp);

        String orderPeriodStr = PayConfigUtil.readConfig("orderPeriod"); // 订单有效期
        paramMap.put("orderPeriod", orderPeriodStr);
        String returnUrl = PayConfigUtil.readConfig("returnUrl"); // 页面通知返回url
        paramMap.put("returnUrl", returnUrl);
        String notifyUrl = PayConfigUtil.readConfig("notifyUrl"); // 后台消息通知Url
        paramMap.put("notifyUrl", notifyUrl);
        String remark = getString_UrlDecode_UTF8("remark"); // 支付备注
        paramMap.put("remark", remark);

        ////////////扩展字段,选填,原值返回///////////
        Map session = (Map) ActionContext.getContext().getSession();
        TUser user = (TUser) session.get("user");
        paramMap.put("field1", user.getUserId()+"");
        paramMap.put("field2", yuDingID);
        paramMap.put("field3", orderNo);
        String field4 = ""; // 扩展字段4
        paramMap.put("field4", field4);
        String field5 = ""; // 扩展字段5
        paramMap.put("field5", field5);

        /////签名及生成请求API的方法///
        String sign = MerchantApiUtil.getSign(paramMap, PayConfigUtil.readConfig("paySecret"));
        paramMap.put("sign", sign);

        String buildRequest = MerchantApiUtil.buildRequest(paramMap, "get", "确定", PayConfigUtil.readConfig("scanPayUrl"));
        Map request = (Map) ServletActionContext.getContext().get("request");
        request.put("payMessage", buildRequest);
        return "success";
    }


    private static final String UTF_8 = "utf-8";

    private static final String GBK = "GBK";

    /**
     * 获取request
     *
     * @return
     */
    protected HttpServletRequest getRequest() {
        return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
    }

    /**
     * 获取session
     *
     * @return
     */
    protected HttpSession getSession() {
        return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest().getSession();
    }

    /**
     * 获取application
     *
     * @return
     */
    protected ServletContext getApplication() {
        return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest().getSession().getServletContext();
    }




    public String getString(String name) {
        return getString(name, null);
    }

    public String getString(String name, String defaultValue) {
        String resultStr = getRequest().getParameter(name);
        if (resultStr == null || "".equals(resultStr) || "null".equals(resultStr) || "undefined".equals(resultStr)) {
            return defaultValue;
        } else {
            return resultStr;
        }
    }

    /**
     * 获取请求中的参数值，如果参数值为null刚转为空字符串""
     *
     * @return
     */
    public Map<String, Object> getParamMap_NullStr(Map map) {
        Map<String, Object> parameters = new HashMap<String, Object>();
        Set keys = map.keySet();
        for (Object key : keys) {
            String value = this.getString(key.toString());
            if (value == null){
                value = "";
            }
            parameters.put(key.toString(), value);
        }
        return parameters;
    }



    public int getInt(String name) {
        return getInt(name, 0);
    }

    public int getInt(String name, int defaultValue) {
        String resultStr = getRequest().getParameter(name);
        if (resultStr != null) {
            try {
                return Integer.parseInt(resultStr);
            } catch (Exception e) {
                return defaultValue;
            }
        }
        return defaultValue;
    }

    public BigDecimal getBigDecimal(String name) {
        return getBigDecimal(name, null);
    }

    public BigDecimal getBigDecimal(String name, BigDecimal defaultValue) {
        String resultStr = getRequest().getParameter(name);
        if (resultStr != null) {
            try {
                return BigDecimal.valueOf(Double.parseDouble(resultStr));
            } catch (Exception e) {
                return defaultValue;
            }
        }
        return defaultValue;
    }

    /**
     * 根据参数名从HttpRequest中获取String类型的参数值，无值则返回"" .
     *
     * @param key
     *            .
     * @return String .
     */
    public String getString_UrlDecode_UTF8(String key) {
        try {
            return URLDecoder.decode(this.getString(key), UTF_8);
        } catch (Exception e) {
            return "";
        }

    }

    public String getString_UrlDecode_GBK(String key) {
        try {
            return new String(getString(key.toString()).getBytes("GBK"), "UTF-8");
        } catch (Exception e) {
            return "";
        }

    }

    /**
     * 获取客户端的IP地址
     *
     * @return
     */
    public String getIpAddr(HttpServletRequest request) {
        String ipAddress = null;
        ipAddress = request.getHeader("x-forwarded-for");
        if (ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
            ipAddress = request.getHeader("Proxy-Client-IP");
        }
        if (ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
            ipAddress = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
            ipAddress = request.getRemoteAddr();
            if (ipAddress.equals("127.0.0.1") || ipAddress.equals("0:0:0:0:0:0:0:1")) {
                // 根据网卡取本机配置的IP
                InetAddress inet = null;
                try {
                    inet = InetAddress.getLocalHost();
                } catch (UnknownHostException e) {
                    e.printStackTrace();
                }
                ipAddress = inet.getHostAddress();
            }

        }

        // 对于通过多个代理的情况，第一个IP为客户端真实IP,多个IP按照','分割
        if (ipAddress != null && ipAddress.length() > 15) {
            if (ipAddress.indexOf(",") > 0) {
                ipAddress = ipAddress.substring(0, ipAddress.indexOf(","));
            }
        }
        return ipAddress;
    }

    /**
     * 获取refererUrl
     */
    public String getRefererUrl(HttpServletRequest request) {
        return request.getHeader("referer");
    }

    public String readRequest(HttpServletRequest request) throws IOException {
        StringBuilder sb = new StringBuilder();
        try {
            String line;
            while ((line = request.getReader().readLine()) != null) {
                sb.append(line);
            }
        } finally {
            request.getReader().close();
        }
        return sb.toString();
    }

    public void write(HttpServletResponse response, String s) {
        PrintWriter out = null;
        try {
            out = response.getWriter();
            out.print(s);
        } catch (IOException e) {
        } finally {
            out.close();
        }
    }
}
