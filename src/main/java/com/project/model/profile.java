package com.project.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class profile {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int uid;
	private String name;
	private String email;
	private String username;
	private String password;
	private String skills;
	private String preferedJobs;
	private String preferedLocation;
	private String preferedSalary;

	public profile() {
		super();
	}

	public profile(int uid, String name, String email, String username, String password, String skills,
			String preferedJobs, String preferedLocation, String preferedSalary) {
		super();
		this.uid = uid;
		this.name = name;
		this.email = email;
		this.username = username;
		this.password = password;
		this.skills = skills;
		this.preferedJobs = preferedJobs;
		this.preferedLocation = preferedLocation;
		this.preferedSalary = preferedSalary;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}

	public String getPreferedJobs() {
		return preferedJobs;
	}

	public void setPreferedJobs(String preferedJobs) {
		this.preferedJobs = preferedJobs;
	}

	public String getPreferedLocation() {
		return preferedLocation;
	}

	public void setPreferedLocation(String preferedLocation) {
		this.preferedLocation = preferedLocation;
	}

	public String getPreferedSalary() {
		return preferedSalary;
	}

	public void setPreferedSalary(String preferedSalary) {
		this.preferedSalary = preferedSalary;
	}

	@Override
	public String toString() {
		return "profile [uid=" + uid + ", name=" + name + ", email=" + email + ", username=" + username + ", password="
				+ password + ", skills=" + skills + ", preferedJobs=" + preferedJobs + ", preferedLocation="
				+ preferedLocation + ", preferedSalary=" + preferedSalary + "]";
	}

}
