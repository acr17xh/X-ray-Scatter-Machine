package com.maxi3.service;

import com.maxi3.pojo.TOutput;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public abstract interface TOutputService {
	public abstract int deleteByPrimaryKey(Long paramLong);

	public abstract int insert(TOutput paramTOutput);

	public abstract TOutput selectByPrimaryKey(Long paramLong);

	public abstract List<TOutput> selectAll();

	public abstract int updateByPrimaryKey(TOutput paramTOutput);

	public abstract List<TOutput> selectBySampleidAndExposuretime(Long sampleid, String exposuretime);

	public abstract List<String> selectExposuretimeBySampleid(Long sampleid);
	
	public abstract List<TOutput> selectBySampleid(Long sampleid);
}



/*
 * Location:
 * X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\service\TOutputService
 * .class Java compiler version: 8 (52.0) JD-Core Version: 0.7.1
 */