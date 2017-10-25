package entities;

public class Score {
    private int score_id;
    private int user_id;
    private int score;

    public int getScore_id() {
        return score_id;
    }

    public void setScore_id(int score_id) {
        this.score_id = score_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public int getStudybatch_id() {
        return studybatch_id;
    }

    public void setStudybatch_id(int studybatch_id) {
        this.studybatch_id = studybatch_id;
    }

    private int studybatch_id;

}
