package entities;

public class Courseware {
    private  int courseware_id;
    private  String name;
    private String url;
    private int type;
    private  int credit;
    private int status;
    private  int couser_id;
    public int getCredit() {
        return credit;
    }

    public void setCredit(int credit) {
        this.credit = credit;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getCouser_id() {
        return couser_id;
    }

    public void setCouser_id(int couser_id) {
        this.couser_id = couser_id;
    }


    public int getCourseware_id() {
        return courseware_id;
    }

    public void setCourseware_id(int courseware_id) {
        this.courseware_id = courseware_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }
}
