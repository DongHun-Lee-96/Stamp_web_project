package kr.mycom.test.dao;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.mybatis.spring.SqlSessionTemplate;

public class AbstractDao {
	protected Logger log = LoggerFactory.getLogger(AbstractDao.class);
    
    @Inject
    private SqlSessionTemplate sqlSession;
      
    protected void printQueryId(String queryId) {
        if(log.isDebugEnabled()){
            log.debug("\t QueryId  \t:  " + queryId);
        }
    }
      
    public Object insert(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.insert(queryId, params);
    }
      
    public Object update(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.update(queryId, params);
    }
      
    public Object delete(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.delete(queryId, params);
    }
      
    public Object selectOne(String queryId){
        printQueryId(queryId);
        return sqlSession.selectOne(queryId);
    }
      
    public Object selectOne(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.selectOne(queryId, params);
    }
      
    @SuppressWarnings("rawtypes")
    public List selectList(String queryId){
        printQueryId(queryId);
        return sqlSession.selectList(queryId);
    }
      
    @SuppressWarnings("rawtypes")
    public List selectList(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.selectList(queryId,params);
    }
}
