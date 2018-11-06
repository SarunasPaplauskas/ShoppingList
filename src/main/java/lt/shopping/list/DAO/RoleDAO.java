package lt.shopping.list.DAO;

import java.util.List;

import lt.shopping.list.entity.Role;


public interface RoleDAO {
	public List<Role> rolesList();
	public Role getRole(int roleId);

}
