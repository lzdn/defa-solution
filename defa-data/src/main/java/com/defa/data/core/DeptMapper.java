package com.defa.data.core;

import java.util.List;

import com.defa.model.core.Dept;
import com.github.pagehelper.Page;

public interface DeptMapper {
    int deleteByPrimaryKey(Integer deptId);

    int insert(Dept record);

    int insertSelective(Dept record);

    Dept selectByPrimaryKey(Integer deptId);

    int updateByPrimaryKeySelective(Dept record);

    int updateByPrimaryKey(Dept record);
    
	Page<Dept> findPage();

	List<Dept> findAll();
}