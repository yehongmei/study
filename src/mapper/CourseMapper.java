package mapper;

import entities.Course;

import java.util.List;

public interface CourseMapper {
    List<Course> selectAllCourse();
    int addCourse(Course course);
    int deleteCourse(Integer course_id);
    int updateCourse(Integer course_id);
    Course selectCourse(Integer course_id);
}
