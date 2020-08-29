package com.kidd.testfishing1.interceptor;

import cn.hutool.core.date.DateUtil;
import com.kidd.testfishing1.common.IpUtils;
import com.kidd.testfishing1.service.AuthUserService;
import com.kidd.testfishing1.task.AsyncTask;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.time.Clock;
import java.time.LocalDateTime;
import java.time.ZoneId;

@Service
public class AuthInterceptor  implements HandlerInterceptor {

    @Autowired
    private AsyncTask asyncTask;

    @Autowired
    private AuthUserService authUserService;

    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler) throws Exception {
        // TODO Auto-generated method stub
        String ip = IpUtils.getIpAddress(request);
        if("104.128.93.253".equals(ip)){
            return true;
        }
        String ul = request.getHeader("Accept-Language");
        String url = request.getRequestURI();
        String ua = request.getHeader("User-Agent");
        LocalDateTime localDateTime = LocalDateTime.now(Clock.system(ZoneId.of("+9")));
        String dateTime = DateUtil.format(localDateTime,"yyyy-MM-dd HH:mm:ss");

        Boolean authBool =  authUserService.auth(ul,ip,dateTime);
        asyncTask.asyncWriteLog(ip,ua,dateTime,ul,url,authBool);
        if(authBool){
            return true;
        }
        StringBuffer url1 = request.getRequestURL();
        String tempContextUrl = url1.delete(url.length() - request.getRequestURI().length(), url.length()).append(request.getServletContext().getContextPath()).append("/test").toString();
        response.sendRedirect(tempContextUrl);
        return false;
    }
}
