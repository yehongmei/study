package service;
import entities.Course;
import mapper.CourseMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
@Service
public class CourseService {
    @Autowired
    private CourseMapper courseMapper;
    public List<Course> selectAllCourse(){
        return  courseMapper.selectAllCourse();
    }
    public  boolean addCourse(Course course){ return  courseMapper.addCourse(course)>0; }
    public  int  deleteCourse(Integer course_id){ return  courseMapper.deleteCourse(course_id); }
    public Course selectCourse(Integer course_id){ return  courseMapper.selectCourse(course_id); }
    public  int  updateCourse(Integer course_id){ return  courseMapper.deleteCourse(course_id); }
}
