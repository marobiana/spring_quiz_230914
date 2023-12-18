package com.quiz.lesson03.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.quiz.lesson03.domain.RealEstate;

@Repository
public interface RealEstateMapper {

	// input: id     output: RealEstate(있거나 또는 null)
	public RealEstate selectRealEstateById(int id);
	
	// input:rentPrice   output: List<RealEstate>([] or 채워져있거나)
	public List<RealEstate> selectRealEstateListByRentPrice(int rentPrice);
}











