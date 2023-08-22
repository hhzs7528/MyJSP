package com.hh.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NewsType {
    private int id;
    private String newsType;
    private List<NewsInfo> newsInfoList;
}
