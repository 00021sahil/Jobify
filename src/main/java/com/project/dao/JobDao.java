package com.project.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.model.Job;

public interface JobDao extends JpaRepository<Job, Integer> {

}
