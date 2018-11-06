package lt.shopping.list.DAO;

import java.util.List;

import lt.shopping.list.entity.User;

public interface UserDAO {
	public List<User> usersList();
	public User getUser (int id);
	public void deleteUser(int id);
	public void updateUser(User user);
	public boolean addUser(User user);

}
