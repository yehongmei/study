package service;

import entities.Course;
import entities.Courseware;
import mapper.CoursewareMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CoursewareService {
    @Autowired
    private CoursewareMapper coursewareMapper;
    public List<Courseware> selectAllCourseware(){
        return  coursewareMapper.selectAllCourseware();
    }
    public List<Course> selectAllCourse(){
        return  coursewareMapper.selectAllCourse();
    }
    public  int insertCourseware(Courseware courseware){
        return  coursewareMapper.insertCourseware(courseware);
    }

}
