package com.quiz.lesson02.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson02.domain.Store;
import com.quiz.lesson02.mapper.StoreMapper;

@Service // spring bean
public class StoreBO {

	@Autowired // DI
	private StoreMapper storeMapper;
	
	// input:X =>컨트롤러로부터 요청  output:List<Store> => 컨트롤러에게 돌려줌
	public List<Store> getStoreList() {
		return storeMapper.selectStoreList();
	}
}




