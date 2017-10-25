package controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import service.RoleService;


@Controller
public class RoleController {
   /* 用户登录*/
    @Autowired
    private RoleService roleService;
   /* 查询所有角色*/
    @RequestMapping("/selectAllRole")
    public String selectAllRole(Model model){
        model.addAttribute("selectAllRole",roleService.selectAllRole());
        return "roleList";
    }
}
