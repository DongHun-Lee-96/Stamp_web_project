package kr.mycom.test.domain;

public class PagingVO {
    private int index;		// 출력할 페이지 번호
    private int rows;		// 페이지 별 출력 갯수
    private int total;		// 검색 결과 총 갯수
    private int pageLimit;	// 출력할 페이지 번호 갯수
    
    public PagingVO() {
        index = 1;
        rows = 10;
        pageLimit = 5;
    }
    
    public void setTotal(int total) {
        this.total = total;
    }
    
    public int getStart() {
        return Math.max(1, index - (pageLimit / 2));
    }
    
    public int getEnd() {
        int totalPagesCnt = (int) Math.ceil(1.0 * total / rows);
        int start = getStart();
        int end = start + pageLimit - 1;
        return Math.min(end, totalPagesCnt);
    }
    
    public int getLastPageNum() {
        return (int) Math.ceil(1.0 * total / rows);
    }
    
    public void setIndex(int pageNum) {
        index = pageNum;
    }

	@Override
	public String toString() {
		return "PagingVO [index=" + index + ", rows=" + rows + ", total=" + total + ", pageLimit=" + pageLimit + "]";
	}
}