package controller;
import entities.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import service.CoursewareService;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
@Controller
public class CoursewareController {
    @Autowired
    private CoursewareService coursewareService;
    @RequestMapping("/selectAllCourseware")
    public  String selectAllCourseware(Model model){
        model.addAttribute("allCourseware",coursewareService.selectAllCourseware());
        return "coursewareList";
    }
    @RequestMapping("/selectAllCourseware_Course")
    public String selectAllCourse(Model model){
        model.addAttribute("selectAllCourse",coursewareService.selectAllCourse());
        return "addCourseware";
    }
    @RequestMapping(value = "/insertCourseware",method = RequestMethod.POST)
    @ResponseBody
    public  boolean insertCourseware(Courseware courseware){

        if(coursewareService.insertCourseware(courseware)>0){
            return true;
        }
        else {
            return  false;
        }
    }

}
