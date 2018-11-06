package lt.shopping.list.services;

import java.util.List;

import lt.shopping.list.entity.User;

public interface UserService {
	public List<User> usersList();
	public User getUser (int id);
	public void deleteUser(int id);
	public boolean updateUser(Integer userId, Integer roleId);
	public boolean addUser(User user);


}
