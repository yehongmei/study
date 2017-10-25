package controller;
import entities.Menu;
import entities.RoleUser;
import entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.UserService;
import javax.servlet.http.HttpSession;
import java.util.List;
@Controller
public class UserController {
    /* 用户登录*/
    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    @ResponseBody
    public boolean selectUserMemu(User user, HttpSession session) {
        List<Menu> menus = userService.selectUserMemu(user);
        session.setAttribute("selectUserMemu", menus);
        if (menus != null && menus.size() > 0) {
            return true;

        } else {
            return false;
        }
    }

    /* 查询所有用户*/
    @RequestMapping("/selectAllUser")
    public String selectAllUser(Model model) {
        model.addAttribute("selectAllUser", userService.selectAllUser());
        return "userList";
    }

    /*新增用户（包含用户表和用户角色表）*/
    @RequestMapping("/insertUser")
    @ResponseBody
    public String insertUser(User user,RoleUser roleUser) {
      if(userService.insertUser(user)>0){
          roleUser.setUser_id(user.getUser_id());
          if(userService.insertRoleUser(roleUser)>0){
              return "login";
          }
      }
        return "error";
    }
 @RequestMapping("deleteUser/{user_id}")
    @ResponseBody
    public boolean deleteUser(@PathVariable("user_id") Integer user_id){
        if (userService.deleteRoleUserByUserId(user_id)>0)
            if(userService.deleteUser(user_id)>0){
                return  true;
            }
     return false;
}
@RequestMapping("/fuzzySearch")
    @ResponseBody
    public  boolean fuzzySearch(User user){
        if(userService.fuzzySearch(user)!=null){
            return  true;
        }
    return  false;
}

}


