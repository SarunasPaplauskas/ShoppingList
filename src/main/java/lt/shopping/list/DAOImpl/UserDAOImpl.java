package lt.shopping.list.DAOImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lt.shopping.list.DAO.UserDAO;
import lt.shopping.list.entity.User;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<User> usersList() {
		Session session = sessionFactory.getCurrentSession();
		List<User> usersList = session.createQuery("FROM User", User.class).getResultList();
		return usersList;
	}

	@Override
	public User getUser(int id) {
		Session session = sessionFactory.getCurrentSession();
		User user = session.find(User.class, id);
		return user;
	}

	@Override
	public void deleteUser(int id) {
		Session session = sessionFactory.getCurrentSession();
		User user = session.find(User.class, id);
		session.delete(user);
	}

	@Override
	public void updateUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.update(user);
	}

	@Override
	public boolean addUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		try {
			/*
			 * Email DB priskirtas Unique, jei vartotojo nurodytas email yra DB, vartotojas nebus itrauktas
			 * i DB ir bus grazinta false verte
			 */
		session.save(user);
		return true;
		} catch (Exception e) {
			session.clear();
			return false;
		}
		
	}

}
