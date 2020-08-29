package com.kidd.testfishing1.task;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.io.FileUtil;
import cn.hutool.core.io.file.FileAppender;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import java.time.Clock;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.List;

@Service
public class AsyncTask {
    @Async
    public void asyncWriteList(String path, List<String> contents){
        if( !FileUtil.exist(path)){
            FileUtil.newFile(path);
        }
        FileAppender fileAppender = new FileAppender(FileUtil.file(path),1000,true);
        fileAppender.append("===================================================================");
        for (String content:contents){
            fileAppender.append(content);
        }
        fileAppender.flush();
    }

    @Async
    public void asyncWriteLog(String ip, String ua ,String dateTime,String al,String url,Boolean authBool){
        LocalDateTime localDateTime = LocalDateTime.now(Clock.system(ZoneId.of("+9")));
        String timeStr = DateUtil.format(localDateTime,"yyyyMMdd");
        String path = String.format("/root/%s/access.log",timeStr);
        if( !FileUtil.exist(path)){
            FileUtil.newFile(path);
        }
        FileAppender fileAppender = new FileAppender(FileUtil.file(path),1000,true);
        fileAppender.append("==================================================");
        fileAppender.append("ip:"+ip);
        fileAppender.append("ua:"+ua);
        fileAppender.append("di:"+dateTime);
        fileAppender.append("al:"+al);
        fileAppender.append("url:"+url);
        fileAppender.append("authBool:"+authBool);
        fileAppender.flush();
    }

    @Async
    public void asyncWriteLogStr(String info){
        LocalDateTime localDateTime = LocalDateTime.now(Clock.system(ZoneId.of("+9")));
        String timeStr = DateUtil.format(localDateTime,"yyyyMMdd");
        String path = String.format("/root/%s/info.log",timeStr);
        if( !FileUtil.exist(path)){
            FileUtil.newFile(path);
        }
        FileAppender fileAppender = new FileAppender(FileUtil.file(path),1000,true);
        fileAppender.append(info+"\n");
        fileAppender.flush();
    }
}
