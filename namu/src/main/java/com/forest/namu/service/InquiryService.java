package com.forest.namu.service;

import java.util.List;
import java.util.Map;

import com.forest.namu.domain.Inquiry;



public interface InquiryService {
	public void insertInquiry(Inquiry dto) throws Exception;
	public void deleteInquiry(long num) throws Exception;
	
	public int dataCount(Map<String, Object> map);
	public List<Inquiry> listInquiry(Map<String, Object> map);
	
	public Inquiry findById(long num);
}
