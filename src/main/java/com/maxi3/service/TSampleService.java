package com.maxi3.service;

import com.maxi3.pojo.TSample;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public abstract interface TSampleService {
	public abstract int deleteByPrimaryKey(Long paramLong);

	public abstract int insert(TSample paramTSample);

	public abstract TSample selectByPrimaryKey(Long paramLong);

	public abstract List<TSample> selectAll();

	public abstract int updateByPrimaryKey(TSample paramTSample);

	public abstract List<TSample> selectByCameralengthAndStage(String cameralength, String stage);
	
	public abstract List<TSample> selectAllOrderBySampledate();
}

/*
 * Location:
 * X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\service\TSampleService
 * .class Java compiler version: 8 (52.0) JD-Core Version: 0.7.1
 */