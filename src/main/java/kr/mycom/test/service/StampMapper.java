package kr.mycom.test.service;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.mycom.test.domain.StampVO;

public interface StampMapper {
    @Insert("insert into stamp (accountno, s_name, startdate, enddate, location, detailaddr, category, detail, image) values (#{accountno}, #{s_name}, #{startdate}, #{enddate}, #{location}, #{detailaddr}, #{category}, #{detail}, #{image})")
    public boolean create(StampVO stamp);
    
    @Select("select * from stamp")
    public List<StampVO> getList();
    
    @Select("select * from stamp where stampno = #{stampno} order by startdate desc")
    public StampVO getStamp(int stampno);
    
    @Select("select * from stamp where (location = #{location} and category = #{category})")
    public List<StampVO> getSearch(StampVO stamp);
    
    @Update("update stamp set s_name = #{s_name}, startdate = #{startdate}, enddate = #{enddate}, location = #{location}, detailaddr = #{detailaddr}, category = #{category}, detail = #{detail}, image = #{image} where stampno = #{stampno}")
    public boolean update(StampVO stamp);
    
    @Delete("delete from stamp where stampno = #{stampno}")
    public boolean delete(int stampno);
    
    @Select("select COUNT(*) from stamp")
    int getStampCnt();
}
