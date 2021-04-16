package model;

public class Login {
    private String user;
    private String passwd;

    public Login(String user, String passwd) {
        this.user = user;
        this.passwd = passwd;
    }
    
    public boolean esValido() {
        boolean flag = false;
        if (user.equals("123") && passwd.equals("123")) {
            flag=true;
        }
        return flag;
    }
    
}
