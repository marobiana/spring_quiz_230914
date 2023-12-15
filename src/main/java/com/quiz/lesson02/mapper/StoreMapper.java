package com.quiz.lesson02.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.quiz.lesson02.domain.Store;

@Repository
public interface StoreMapper {
	
	// input:X =>BO로부터 요청  output:List<Store> => BO에게 돌려줌
	public List<Store> selectStoreList();
}



