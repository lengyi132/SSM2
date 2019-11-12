package com.lha.ssm.dao;

import com.lha.ssm.entity.EasybuyNews;
import com.lha.ssm.entity.EasybuyNewsExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EasybuyNewsMapper {
    long countByExample(EasybuyNewsExample example);

    int deleteByExample(EasybuyNewsExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(EasybuyNews record);

    int insertSelective(EasybuyNews record);

    List<EasybuyNews> selectByExample(EasybuyNewsExample example);

    EasybuyNews selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") EasybuyNews record, @Param("example") EasybuyNewsExample example);

    int updateByExample(@Param("record") EasybuyNews record, @Param("example") EasybuyNewsExample example);

    int updateByPrimaryKeySelective(EasybuyNews record);

    int updateByPrimaryKey(EasybuyNews record);
}