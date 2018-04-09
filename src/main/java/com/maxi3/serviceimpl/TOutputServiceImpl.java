/*    */ package com.maxi3.serviceimpl;

/*    */
/*    */ import com.maxi3.dao.TOutputDao;
/*    */ import com.maxi3.pojo.TOutput;
/*    */ import com.maxi3.service.TOutputService;
/*    */ import java.util.List;
/*    */ import javax.annotation.Resource;
/*    */ import org.springframework.stereotype.Service;

/*    */
/*    */
/*    */
/*    */
/*    */
/*    */
/*    */
/*    */
/*    */ @Service("toutputservice")
/*    */ public class TOutputServiceImpl/*    */ implements TOutputService
/*    */ {
	/*    */ @Resource
	/*    */ private TOutputDao toutputdao;

	/*    */
	/*    */ public int deleteByPrimaryKey(Long outputId)
	/*    */ {
		/* 26 */ return this.toutputdao.deleteByPrimaryKey(outputId);
		/*    */ }

	/*    */
	/*    */
	/*    */ public int insert(TOutput record)
	/*    */ {
		/* 32 */ return this.toutputdao.insert(record);
		/*    */ }

	/*    */
	/*    */
	/*    */ public TOutput selectByPrimaryKey(Long outputId)
	/*    */ {
		/* 38 */ return this.toutputdao.selectByPrimaryKey(outputId);
		/*    */ }

	/*    */
	/*    */
	/*    */ public List<TOutput> selectAll()
	/*    */ {
		/* 44 */ return this.toutputdao.selectAll();
		/*    */ }

	/*    */
	/*    */
	/*    */ public int updateByPrimaryKey(TOutput record)
	/*    */ {
		/* 50 */ return this.toutputdao.updateByPrimaryKey(record);
		/*    */ }

	/*    */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.maxi3.service.TOutputService#selectBySampleidAndExposuretime(java.lang.
	 * Long, java.lang.String)
	 */
	@Override
	public List<TOutput> selectBySampleidAndExposuretime(Long sampleid, String exposuretime) {
		// TODO Auto-generated method stub
		return toutputdao.selectBySampleidAndExposuretime(sampleid, exposuretime);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.maxi3.service.TOutputService#selectExposuretimeBySampleid(java.lang.Long)
	 */
	@Override
	public List<String> selectExposuretimeBySampleid(Long sampleid) {
		// TODO Auto-generated method stub
		return toutputdao.selectExposuretimeBySampleid(sampleid);
	}

	/* (non-Javadoc)
	 * @see com.maxi3.service.TOutputService#selectBySampleid(java.lang.Long)
	 */
	@Override
	public List<TOutput> selectBySampleid(Long sampleid) {
		// TODO Auto-generated method stub
		return toutputdao.selectBySampleid(sampleid);
	}
}

/*
 * Location: X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\serviceimpl\
 * TOutputServiceImpl.class Java compiler version: 8 (52.0) JD-Core Version:
 * 0.7.1
 */