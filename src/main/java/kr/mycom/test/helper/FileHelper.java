package kr.mycom.test.helper;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class FileHelper {
    public static String upload(String uploadPath, MultipartFile multipartFile, HttpServletRequest request) {
        String uploadedFileUrl = null;
        String rootPath = request.getSession().getServletContext().getRealPath("/");
        String realUploadPath = rootPath + "/resources" + uploadPath;
        File dir = new File(realUploadPath);
        if (!dir.exists())
            dir.mkdirs();
        File file = new File(multipartFile.getOriginalFilename());
        try {
            multipartFile.transferTo(file);
            String contextPath = request.getContextPath();
            uploadedFileUrl = file.getName();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return uploadedFileUrl;
    }
}
