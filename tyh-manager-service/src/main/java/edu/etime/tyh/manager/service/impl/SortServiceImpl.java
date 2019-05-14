package edu.etime.tyh.manager.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.etime.tyh.manager.dao.mapper.SortMapper;
import edu.etime.tyh.manager.interfaces.SortService;
import edu.etime.tyh.pojo.Sort;

@Service
public class SortServiceImpl implements SortService {
	@Autowired
	private SortMapper sortMapper;

	@Override
	public List<Sort> getSortList(Sort sort) {
		return sortMapper.getSortList(sort);
	}

	@Override
	public Sort getSort(Sort sort) {
		// TODO Auto-generated method stub
		return sortMapper.selectByPrimaryKey(sort.getSorid());
	}

	@Override
	public int insertSort(Sort sort) {
		// TODO Auto-generated method stub
		return sortMapper.insertSelective(sort);
	}

	@Override
	public int updateSort(Sort sort) {
		// TODO Auto-generated method stub
		return sortMapper.updateByPrimaryKeySelective(sort);
	}
}
