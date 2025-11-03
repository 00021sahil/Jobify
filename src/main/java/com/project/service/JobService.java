package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.JobDao;
import com.project.model.Job;
@Service
public class JobService {
	@Autowired
	JobDao jobDao;

	public List<Job> seeAllJobs() {
	    return jobDao.findAll();
	}

	public boolean addJob(Job job) {
		Job saveJob = jobDao.save(job);
		if(saveJob != null) {
			return true;
		}
		return false;
	}
	public void save(Job job) {
		jobDao.save(job);
		
	}

	public List<Job> getAllJobs() {
		// TODO Auto-generated method stub
		return null;
	}

}
