package com.kidd.testfishing1;

import cn.hutool.core.io.FileUtil;
import cn.hutool.core.io.file.FileAppender;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

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
}
