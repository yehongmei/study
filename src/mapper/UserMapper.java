package mapper;
import entities.Menu;
import entities.RoleUser;
import entities.User;
import java.util.List;
public interface UserMapper {
    List<Menu> selectUserMenu(User user);
    List<User> selectAllUser();
    int deleteUser(Integer user_id);
    int deleteRoleUserByUserId(Integer user_id);
    int insetUser(User user);
    int insertRoleUser(RoleUser roleUser);
    List<User> fuzzySearch(User user);

}
