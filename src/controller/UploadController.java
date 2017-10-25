package controller;

import entities.FilePathResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
public class UploadController {
    /*上传图片*/
    @RequestMapping("/upload")
    @ResponseBody
    public Map<String,String> uploadImage(HttpServletRequest request, MultipartFile myfile)
            throws IllegalStateException, IOException {
        String fileCrudeName=myfile.getOriginalFilename();
        int pos=fileCrudeName.lastIndexOf(".");
        String extName=fileCrudeName.substring(pos,fileCrudeName.length());
        String newFileName=UUID.randomUUID()+extName;
        String newFileNamePath = "F:\\IDEAWorkspace\\study\\web\\uploadResource";
        // 文件保存路径
        myfile.transferTo(new File(newFileNamePath+"/"+newFileName));	//写入文件
        Map<String,String> map = new HashMap<>();
        map.put("url","/uploadResource/"+newFileName);
        map.put("fileSize",myfile.getSize()+"");
        map.put("fileName",fileCrudeName);
//        //获取磁盘路径
//        String contextPath = request.getContextPath();
//        String contextPath1 = request.getServletPath();
//        String contextPath2 = request.getSession().getServletContext().getRealPath("uploadResource/");
//        //上传的路径
//        String basePath = "uploadResource";
//        long size = myfile.getSize();
//
//        //获取上传文件名
//        String uploadFileName = myfile.getOriginalFilename();
//        String newUploadFileName = UUID.randomUUID() + uploadFileName.substring(uploadFileName.lastIndexOf("."));
//        //创建文件
//        File targetFile = new File(path+"/", newUploadFileName);
//        String baseUrl1 = request.getServletPath();
//        if(!targetFile.exists()){
//            targetFile.mkdirs();  //创建文件
//        }
//        myfile.transferTo(targetFile);	//写入文件
//
//        String url = "/"+basePath+newUploadFileName;
//        Map<String,String> map = new HashMap<>();
//        map.put("url",url);
//        map.put("fileSize",size+"");
//        map.put("fileName",uploadFileName);
        return map;
    }
}
