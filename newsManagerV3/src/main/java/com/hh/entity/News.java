package com.hh.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class News {
    private int id;
    private String newsTitle;
    private String newsTime;
    private String newsContent;
    private String newsType;
}
