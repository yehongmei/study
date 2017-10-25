package entities;

public class Role {
    private  int role_id;
    private  String rname;
    private int rstatus;
    private  String username;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getRstatus() {
        return rstatus;

    }

    public void setRstatus(int rstatus) {
        this.rstatus = rstatus;
    }

    public int getRole_id() {

        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }
}
