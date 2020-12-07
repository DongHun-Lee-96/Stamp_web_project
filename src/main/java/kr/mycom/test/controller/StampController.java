package kr.mycom.test.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.mycom.test.domain.PagingVO;
import kr.mycom.test.domain.StampVO;
import kr.mycom.test.helper.FileHelper;
import kr.mycom.test.service.StampMapper;

@Controller
@RequestMapping(value="/stamp/*")
public class StampController {
	@Inject
	StampMapper stampMapper;
	
    @RequestMapping(value = "/keywordStamp", method = RequestMethod.GET)
    public String all() {															// 암것도 아님 연습용
        return "/keywordStamp";
    }
	
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(Model model, PagingVO paging) {								// 전체 스탬프 보기
        // 맵퍼로부터 리스트를 받아옴.
        List<StampVO> stamp = stampMapper.getList();
        
        System.out.println(">_< all");
        
        // 페이징
        paging.setTotal(stampMapper.getStampCnt());
        model.addAttribute("paging", paging);
        
        // 모델을 통해 뷰페이지로 데이터를 전달
        model.addAttribute("stamp", stamp);    
        return "stamp/index";
    }
    
    @RequestMapping(value = "/stamping", method = RequestMethod.GET)
    public String newStamp() {														// 스탬프 등록 페이지로 이동
        return "stamp/stamping";
    }
    
    @RequestMapping(value = "/new", method = RequestMethod.POST)
    public String create(StampVO stamp, @RequestParam MultipartFile file, HttpServletRequest request) {
    																				// 스탬프 db 등록 후, 전체 보기 페이지로 이동
        String fileUrl = FileHelper.upload("/uploads", file, request);
        stamp.setImage(fileUrl);
        
        String detail = request.getParameter("detail");
        detail = detail.replace("\r\n","<br>");
    	
        stamp.setDetail(detail);
        
        stampMapper.create(stamp);
        System.out.println(stamp.toString());
        return "redirect:/stamp/index";
    }
    
    @RequestMapping(value = "/{stampno}", method = RequestMethod.GET)
    public String detailStamp(@PathVariable int stampno, Model model) {				// 각 스탬프 상세보기 페이지
    	StampVO stamp = stampMapper.getStamp(stampno);

        System.out.println(stamp.toString());
        // 모델을 통해 뷰페이지로 데이터를 전달
        model.addAttribute("stamp", stamp);
        return "stamp/stamping_detail";
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String search(@ModelAttribute StampVO stamp, Model model) {				// 카테고리, 지역별 검색
    	List<StampVO> search_result = stampMapper.getSearch(stamp);

        System.out.println(">_< search");
        // 모델을 통해 뷰페이지로 데이터를 전달
        model.addAttribute("stamp", search_result);     	
    	return "stamp/index";
    }
    
    @RequestMapping(value = "/edit/{stampno}", method = RequestMethod.GET)
    public String edit(@PathVariable int stampno, Model model) {					// 수정할 스탬프의 stampno 가져와서 데이터 확보
    	// stampno를 통해 데이터 가져옴
    	StampVO stamp = stampMapper.getStamp(stampno);
    	
    	model.addAttribute("stamp", stamp);
        return "stamp/edit";
    }
    
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@ModelAttribute StampVO stamp, @RequestParam MultipartFile file, HttpServletRequest request) {
    																				// 수정할 스탬프 db 업데이트 후 전체보기 페이지로
        String fileUrl = FileHelper.upload("/uploads", file, request);
        stamp.setImage(fileUrl);
        
        String detail = request.getParameter("detail");
        detail = detail.replace("\r\n","<br>");
    	
        stamp.setDetail(detail);
        
        stampMapper.update(stamp);
        System.out.println(stamp.toString());
        return "redirect:/stamp/index";
    }
    
    @RequestMapping(value = "/delete/{stampno}", method = RequestMethod.GET)
    public String delete(@PathVariable int stampno, Model model) {					// 삭제할 스탬프의 stampno 가져와서 데이터 확보
    	// stampno를 통해 데이터 가져옴
        stampMapper.delete(stampno);
        return "redirect:/stamp/index";
    }
}
