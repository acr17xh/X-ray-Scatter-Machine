package com.maxi3.dao;

import com.maxi3.pojo.TSample;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public abstract interface TSampleDao {
	public abstract int deleteByPrimaryKey(Long paramLong);

	public abstract int insert(TSample paramTSample);

	public abstract TSample selectByPrimaryKey(Long paramLong);

	public abstract List<TSample> selectAll();

	public abstract List<TSample> selectAllOrderBySampledate();

	public abstract int updateByPrimaryKey(TSample paramTSample);

	public abstract List<TSample> selectByCameralengthAndStage(@Param("cameralength") String cameralength,
			@Param("stage") String stage);

}

/*
 * Location:
 * X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\dao\TSampleDao.class
 * Java compiler version: 8 (52.0) JD-Core Version: 0.7.1
 */