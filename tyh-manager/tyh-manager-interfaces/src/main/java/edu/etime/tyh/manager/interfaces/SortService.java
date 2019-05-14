package edu.etime.tyh.manager.interfaces;

import java.util.List;

import edu.etime.tyh.pojo.Sort;

public interface SortService {
	List<Sort> getSortList(Sort sort);
	Sort getSort(Sort sort);
	int insertSort(Sort sort);
	int updateSort(Sort sort);
}
