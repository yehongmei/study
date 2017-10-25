package service;

import entities.Menu;
import entities.RoleUser;
import entities.User;
import mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;
    public  List<Menu> selectUserMemu(User user){
        return userMapper.selectUserMenu( user);
    }
    public  List<User> selectAllUser(){ return  userMapper.selectAllUser(); }
    public  int deleteRoleUserByUserId(Integer user_id){ return userMapper.deleteRoleUserByUserId(user_id); }
    public  int deleteUser(Integer user_id){ return userMapper.deleteUser(user_id); }
    public int insertUser(User user){
        return  userMapper.insetUser(user);
    }
    public int insertRoleUser(RoleUser roleUser){
        return  userMapper.insertRoleUser(roleUser);
    }
    public List<User> fuzzySearch(User user){ return  userMapper.fuzzySearch(user); }
}
