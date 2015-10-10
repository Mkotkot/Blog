package com.kotkot.AOP;

import java.util.List;

import com.kotkot.entry.Blop;
import com.kotkot.entry.UserBlop;

public interface BlogDAO {
	public void addBlog(Blop blog);

	public void deleteBlog(int id);

	public void updateBlog(Blop blop);

	public List<Blop> userBlogs(UserBlop userBlop);

	public List<Blop> blogSearchResult(String titel);

	public Blop getOneBlog(int id  ,  UserBlop userBlop);

}
