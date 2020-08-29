package com.kidd.testfishing1.service;

public interface CacheService {
    void setCommonCache(String key,Object value);
    //取
    Object getCommonCache(String key);
}
