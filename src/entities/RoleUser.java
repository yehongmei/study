package entities;

public class RoleUser {
    private int role_user_id;
    private  int role_id;
    private  int user_id;

    public int getRole_user_id() {
        return role_user_id;
    }

    public void setRole_user_id(int role_user_id) {
        this.role_user_id = role_user_id;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }
}
