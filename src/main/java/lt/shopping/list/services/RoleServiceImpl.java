package lt.shopping.list.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lt.shopping.list.DAO.RoleDAO;
import lt.shopping.list.entity.Role;

@Service
@Transactional
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleDAO roleDAOImpl;
	
	
	@Override
	public List<Role> rolesList() {
		return roleDAOImpl.rolesList();
	}

	@Override
	public Role getRole(int roleId) {
		return roleDAOImpl.getRole(roleId);
	}

}
