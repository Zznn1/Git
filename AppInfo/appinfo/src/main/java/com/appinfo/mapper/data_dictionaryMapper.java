package com.appinfo.mapper;

import com.appinfo.entity.data_dictionary;

import java.util.List;

public interface data_dictionaryMapper {
    List<data_dictionary> getAppStatus();
    List<data_dictionary> getFlatFormId();
}