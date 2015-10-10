package com.kotkot.AOP;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kotkot.entry.UserBlop;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO {

	private static final Logger logger = LoggerFactory
			.getLogger(UserDAOImpl.class);

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@Override
	public void addUser(UserBlop u) {
		Session session = this.sessionFactory.getCurrentSession();
		System.out.println(" Berfor adding the userBlop --- ---- ---");
		session.beginTransaction();
		session.save(u);
		session.getTransaction().commit();
	}

	@Override
	public void updateUser(UserBlop u) {
		Session session = this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.update(u);
		session.getTransaction().commit();
		logger.info("User updated successfully, user new name =" + u.getName());

	}

	@Override
	public List<UserBlop> listUser() {
		Session session = this.sessionFactory.getCurrentSession();
		List<UserBlop> UserList = session.createQuery("from UserBlop").list();
		for (UserBlop u : UserList) {
			logger.info("users List::" + u);
		}
		return UserList;
	}

	@Override
	public UserBlop getUserById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		UserBlop u = (UserBlop) session.load(UserBlop.class, new Integer(id));
		logger.info("users loaded successfully, user details=" + u);
		return u;
	}

	@Override
	public void removeUser(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		UserBlop u = (UserBlop) session.load(UserBlop.class, new Integer(id));
		if (null != u) {
			session.delete(u);
		}
		logger.info("Person deleted successfully, person details=" + u);

	}

	@Override
	public List<UserBlop> UsersEmailPassword(String email , String password ) {
		Session session = this.sessionFactory.getCurrentSession();
		System.out.println(" Berfor userger email and bassword  the userBlop --- ---- ---");
		session.beginTransaction();
		
		Criteria  criteria = session.createCriteria(UserBlop.class);
		criteria.add(Restrictions.and(Restrictions.eq("email", email) , Restrictions.eq("password", password))  ) ;
		
		List<UserBlop> listuser = criteria.list() ;

		session.getTransaction().commit();
		for (UserBlop userBlop : listuser) {
			System.out.println(userBlop.getName().toString()) ;
		}
		return listuser;
	}

}
