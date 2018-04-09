package com.maxi3.dao;

import com.maxi3.pojo.TOutput;
import com.maxi3.pojo.TSample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public abstract interface TOutputDao {
	public abstract int deleteByPrimaryKey(Long paramLong);

	public abstract int insert(TOutput paramTOutput);

	public abstract TOutput selectByPrimaryKey(Long paramLong);

	public abstract List<TOutput> selectAll();

	public abstract int updateByPrimaryKey(TOutput paramTOutput);

	public abstract List<TOutput> selectBySampleidAndExposuretime(@Param("sampleid") Long sampleid,
			@Param("exposuretime") String exposuretime);

	public abstract List<String> selectExposuretimeBySampleid(@Param("sampleid") Long sampleid);
	
	public abstract List<TOutput> selectBySampleid(@Param("sampleid") Long sampleid);
}

/*
 * Location:
 * X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\dao\TOutputDao.class
 * Java compiler version: 8 (52.0) JD-Core Version: 0.7.1
 */