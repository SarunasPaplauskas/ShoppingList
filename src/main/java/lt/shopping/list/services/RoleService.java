package lt.shopping.list.services;

import java.util.List;

import lt.shopping.list.entity.Role;

public interface RoleService {
	public List<Role> rolesList ();
	public Role getRole(int roleId);
}
