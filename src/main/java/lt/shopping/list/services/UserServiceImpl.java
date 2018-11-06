package lt.shopping.list.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lt.shopping.list.DAO.RoleDAO;
import lt.shopping.list.DAO.UserDAO;
import lt.shopping.list.entity.Role;
import lt.shopping.list.entity.User;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAOImpl;
	
	@Autowired
	private RoleDAO roleDAOImpl;
	
	@Override
	public List<User> usersList() {
		return userDAOImpl.usersList();
	}

	@Override
	public User getUser(int id) {
		return userDAOImpl.getUser(id);
	}

	@Override
	public void deleteUser(int id) {
		userDAOImpl.deleteUser(id);
	}

	@Override
	public boolean updateUser(Integer userId, Integer roleId) {
		User user = userDAOImpl.getUser(userId);
		Role role = roleDAOImpl.getRole(roleId);
	for (Role val: user.getRoles()) {
		if (val.getAuthority().equals(role.getAuthority())) {
			return false;
		}
	}
		user.getRoles().add(role);
		userDAOImpl.updateUser(user);
		return true;
	}

	@Override
	public boolean addUser(User user) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String password = encoder.encode(user.getPassword());
		user.setPassword(password);
		user.getRoles().add(roleDAOImpl.getRole(2));
		return userDAOImpl.addUser(user);
	}
	

}
