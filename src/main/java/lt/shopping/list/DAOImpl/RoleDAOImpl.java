package lt.shopping.list.DAOImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lt.shopping.list.DAO.RoleDAO;
import lt.shopping.list.entity.Role;

@Repository
public class RoleDAOImpl implements RoleDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Role> rolesList() {
		Session session = sessionFactory.getCurrentSession();
		List<Role> rolesList = session.createQuery("FROM Role", Role.class).getResultList();
		return rolesList;
	}

	@Override
	public Role getRole(int roleId) {
		Session session = sessionFactory.getCurrentSession();
		Role role = session.find(Role.class, roleId);
		return role;
	}

}
