package entities;

public class Batch_information {
    private  int batch_innformation_id;
    private  String starttime;
    private  String endtime;
    private int score;

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }
    public int getBatch_innformation_id() {
        return batch_innformation_id;
    }

    public void setBatch_innformation_id(int batch_innformation_id) {
        this.batch_innformation_id = batch_innformation_id;
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
}
