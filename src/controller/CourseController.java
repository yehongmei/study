package controller;

import entities.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.CourseService;

@Controller
public class CourseController {
    @Autowired
    private CourseService courseService;
    @RequestMapping("/selectAllCourse")
    public String selectAllCourse(Model model){
        model.addAttribute("selectAllCourse",courseService.selectAllCourse());
        return "courseList";
    }
    @RequestMapping("/addCourse")
    @ResponseBody
    public boolean addCourse(Course course){
        if(courseService.addCourse(course)){
            return true;
        }
        else {
            return false;
        }
    }
    @RequestMapping("deleteCourse/{course_id}")
    @ResponseBody
    public boolean deleteCourse(@PathVariable("course_id") Integer course_id){
        if(courseService.deleteCourse(course_id)>0){
            return true;
        }
        else {
            return false;
        }
    }
   /* @RequestMapping("updateCourse/{course_id}")
    @ResponseBody
    public boolean updateCourse(@PathVariable("course_id") Integer course_id){
        if(courseService.updateCourse(course_id)>0){
            return true;
        }
        else {
            return false;
        }
    }*/
    @RequestMapping("selectCourse/{course_id}")
    public String selectCourse(@PathVariable("course_id") Integer course_id,Model model){
        Course course=courseService.selectCourse(course_id);
        model.addAttribute("selectCourse",course);
        return "updateCourse";
    }
}
