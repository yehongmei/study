package mapper;
import entities.Course;
import entities.Courseware;

import java.util.List;

public interface CoursewareMapper{
    List<Courseware> selectAllCourseware();
    List<Course> selectAllCourse();
    int insertCourseware(Courseware courseware);
}
