package entities;

public class Batch_courseware {
    private  int batch_courseware_id;
    private int batch_innformation_id;
    private  int courseware_id;

    public int getBatch_innformation_id() {
        return batch_innformation_id;
    }

    public void setBatch_innformation_id(int batch_innformation_id) {
        this.batch_innformation_id = batch_innformation_id;
    }

    public int getBatch_courseware_id() {
        return batch_courseware_id;
    }

    public void setBatch_courseware_id(int batch_courseware_id) {
        this.batch_courseware_id = batch_courseware_id;
    }


    public int getCourseware_id() {
        return courseware_id;
    }

    public void setCourseware_id(int courseware_id) {
        this.courseware_id = courseware_id;
    }
}
