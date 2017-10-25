package entities;

public class Learnrecord {
    private int learnrecord_id;
    private  int studybatch_id;
    private int user_id;

    public int getLearnrecord_id() {
        return learnrecord_id;
    }

    public void setLearnrecord_id(int learnrecord_id) {
        this.learnrecord_id = learnrecord_id;
    }

    public int getStudybatch_id() {
        return studybatch_id;
    }

    public void setStudybatch_id(int studybatch_id) {
        this.studybatch_id = studybatch_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getCourseware_id() {
        return courseware_id;
    }

    public void setCourseware_id(int courseware_id) {
        this.courseware_id = courseware_id;
    }

    public String getStarttime() {
        return starttime;
    }

    public void setStarttime(String starttime) {
        this.starttime = starttime;
    }

    public String getEndtime() {
        return endtime;
    }

    public void setEndtime(String endtime) {
        this.endtime = endtime;
    }

    private int courseware_id;
    private String starttime;
    private String endtime;
}
