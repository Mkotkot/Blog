package com.kotkot.AOP;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kotkot.entry.Blop;
import com.kotkot.entry.UserBlop;

@Repository("blogDAO")
public class BlogDAOImp implements BlogDAO {

	private static final Logger logger = LoggerFactory
			.getLogger(UserDAOImpl.class);
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@Override
	public void addBlog(Blop blog) {
		Session session = this.sessionFactory.getCurrentSession();
		System.out.println(" Berfor adding Blop --- ---- ---");
		session.beginTransaction();
		session.save(blog);
		session.getTransaction().commit();
	}

	@Override
	public void deleteBlog(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		System.out.println("befor get");
		Transaction transaction = session.beginTransaction();
		String hql = "delete from Blop where id= :id ";
		Query query = session.createQuery(hql);
		query.setString("id", id + "");
		System.out.println(query.executeUpdate());
		transaction.commit();


		logger.info("Blog deleted successfully, Blog id =" + id);
	}

	@Override
	public void updateBlog(Blop blop) {
		Session session = this.sessionFactory.getCurrentSession();

		session.beginTransaction();
		session.update(blop);
		System.out.println("finish update ");
		session.getTransaction().commit();
		logger.info("blog updated successfully, blog titel=" + blop.getTitel());
	}

	@Override
	public List<Blop> userBlogs(UserBlop userBlop) {
		Session session = this.sessionFactory.getCurrentSession();
		System.out.println(" Berfor blog  get by user_id  --- ---- ---");
		session.beginTransaction();

		Criteria criteria = session.createCriteria(Blop.class);
		criteria.add(Restrictions.eq("userBlop", userBlop));

		List<Blop> listBlogTitel = criteria.list();

		session.getTransaction().commit();
		for (Blop blop : listBlogTitel) {
			System.out.println(blop.getTitel().toString());
		}

		return listBlogTitel;
	}

	@Override
	public List<Blop> blogSearchResult(String titel) {
		Session session = this.sessionFactory.getCurrentSession();
		System.out.println(" Berfor blog  get by titel --- ---- ---");
		session.beginTransaction();

		Criteria criteria = session.createCriteria(Blop.class);
		criteria.add(Restrictions.like("titel", titel , MatchMode.ANYWHERE));

		List<Blop> listBlogTitel = criteria.list();

		session.getTransaction().commit();
		for (Blop blop : listBlogTitel) {
			System.out.println(blop.getTitel().toString());
		}

		return listBlogTitel;
	}

	@Override
	public Blop getOneBlog(int id, UserBlop userBlop) {

		Session session = this.sessionFactory.getCurrentSession();
		session.beginTransaction();

		Criteria criteria = session.createCriteria(Blop.class);

		criteria.add(Restrictions.and(Restrictions.eq("id", id),
				Restrictions.eq("userBlop", userBlop)));

		List<Blop> Blogs = criteria.list();
		if (Blogs.size() == 1) {

			Blop blog = Blogs.get(0);

			session.getTransaction().commit();
			logger.info("blog loaded successfully blog titel" + blog.getTitel());
			return blog;
		} else {

			return null;
		}
	}

}
