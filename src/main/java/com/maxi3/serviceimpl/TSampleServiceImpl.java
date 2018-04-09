/*    */ package com.maxi3.serviceimpl;

/*    */
/*    */ import com.maxi3.dao.TSampleDao;
/*    */ import com.maxi3.pojo.TSample;
/*    */ import com.maxi3.service.TSampleService;
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
/*    */ @Service("tsampleservice")
/*    */ public class TSampleServiceImpl/*    */ implements TSampleService
/*    */ {
	/*    */ @Resource
	/*    */ private TSampleDao tsampledao;

	/*    */
	/*    */ public int deleteByPrimaryKey(Long sampleId)
	/*    */ {
		/* 26 */ return this.tsampledao.deleteByPrimaryKey(sampleId);
		/*    */ }

	/*    */
	/*    */
	/*    */ public int insert(TSample record)
	/*    */ {
		/* 32 */ return this.tsampledao.insert(record);
		/*    */ }

	/*    */
	/*    */
	/*    */ public TSample selectByPrimaryKey(Long sampleId)
	/*    */ {
		/* 38 */ return this.tsampledao.selectByPrimaryKey(sampleId);
		/*    */ }

	/*    */
	/*    */
	/*    */ public List<TSample> selectAll()
	/*    */ {
		/* 44 */ return this.tsampledao.selectAll();
		/*    */ }

	/*    */
	/*    */
	/*    */ public int updateByPrimaryKey(TSample record)
	/*    */ {
		/* 50 */ return this.tsampledao.updateByPrimaryKey(record);
		/*    */ }

	/*    */
	/*
	 * (non-Javadoc)
	 * 
	 * @see com.maxi3.service.TSampleService#selectByCameralengthAndStage(java.lang.
	 * String, java.lang.String)
	 */
	@Override
	public List<TSample> selectByCameralengthAndStage(String cameralength, String stage) {
		// TODO Auto-generated method stub
		return tsampledao.selectByCameralengthAndStage(cameralength, stage);
	}

	/* (non-Javadoc)
	 * @see com.maxi3.service.TSampleService#selectAllOrderBySampledate()
	 */
	@Override
	public List<TSample> selectAllOrderBySampledate() {
		// TODO Auto-generated method stub
		return tsampledao.selectAllOrderBySampledate();
	}
}

/*
 * Location: X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\serviceimpl\
 * TSampleServiceImpl.class Java compiler version: 8 (52.0) JD-Core Version:
 * 0.7.1
 */