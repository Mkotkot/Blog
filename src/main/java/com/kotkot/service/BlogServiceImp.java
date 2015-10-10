package com.kotkot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kotkot.AOP.BlogDAO;
import com.kotkot.entry.Blop;
import com.kotkot.entry.UserBlop;

@Service("blogService")
public class BlogServiceImp implements BlogService {

	@Autowired
	private BlogDAO blogDAO;

	public BlogDAO getBlogDAO() {
		return blogDAO;
	}

	public void setBlogDAO(BlogDAO blogDAO) {
		blogDAO = blogDAO;
	}

	@Override
	@Transactional
	public void addBlog(Blop blog) {
		this.blogDAO.addBlog(blog);

	}

	@Override
	@Transactional
	public void deleteBlog(int id) {
		this.blogDAO.deleteBlog(id);

	}

	@Override
	@Transactional
	public void updateBlog(Blop blop) {
		this.blogDAO.updateBlog(blop);

	}

	@Override
	@Transactional
	public List<Blop> userBlogs(UserBlop userBlop) {

		return this.blogDAO.userBlogs(userBlop);
	}

	@Override
	@Transactional
	public List<Blop> blogSearchResult(String titel) {

		return this.blogDAO.blogSearchResult(titel);
	}

	@Override
	@Transactional
	public Blop getOneBlog(int id , UserBlop userBlop) {

		return this.blogDAO.getOneBlog(id , userBlop);
	}

}
