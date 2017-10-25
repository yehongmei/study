package entities;

public class User {
    private int user_id;
    private String username;
    private  String password;
    private  String repassword;
    private  int status;
    private  String rname;
    private int role_user_id;


    public int getRole_user_id() {
        return role_user_id;
    }

    public void setRole_user_id(int role_user_id) {
        this.role_user_id = role_user_id;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRepassword() {
        return repassword;
    }

    public void setRepassword(String repassword) {
        this.repassword = repassword;
    }
}
