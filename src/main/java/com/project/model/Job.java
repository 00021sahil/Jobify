package com.project.model;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Job {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int jid;
    private String company;
    private String jobTitle;
    private String requiredSkills;
    private String requiredDegree;
    private String jobDescription; 
    private String companyMail;
    private String applyLink;
    private String jobLocation;

    public Job() {
        super();
    }

    public Job(int jid, String company, String jobTitle, String requiredSkills, String requiredDegree,
            String jobDescription, String companyMail, String applyLink, String jobLocation) { // Fixed spelling
        super();
        this.jid = jid;
        this.company = company;
        this.jobTitle = jobTitle;
        this.requiredSkills = requiredSkills;
        this.requiredDegree = requiredDegree;
        this.jobDescription = jobDescription; // Fixed spelling
        this.companyMail = companyMail;
        this.applyLink = applyLink;
        this.jobLocation = jobLocation;
    }

    public int getJid() {
        return jid;
    }

    public void setJid(int jid) {
        this.jid = jid;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getRequiredSkills() {
        return requiredSkills;
    }

    public void setRequiredSkills(String requiredSkills) {
        this.requiredSkills = requiredSkills;
    }

    public String getRequiredDegree() {
        return requiredDegree;
    }

    public void setRequiredDegree(String requiredDegree) {
        this.requiredDegree = requiredDegree;
    }

    public String getJobDescription() { // Fixed spelling
        return jobDescription;
    }

    public void setJobDescription(String jobDescription) { // Fixed spelling
        this.jobDescription = jobDescription;
    }

    public String getCompanyMail() {
        return companyMail;
    }

    public void setCompanyMail(String companyMail) {
        this.companyMail = companyMail;
    }

    public String getApplyLink() {
        return applyLink;
    }

    public void setApplyLink(String applyLink) {
        this.applyLink = applyLink;
    }

    public String getJobLocation() {
        return jobLocation;
    }

    public void setJobLocation(String jobLocation) {
        this.jobLocation = jobLocation;
    }

    @Override
    public String toString() {
        return "Job [jid=" + jid + ", company=" + company + ", jobTitle=" + jobTitle + ", requiredSkills="
                + requiredSkills + ", requiredDegree=" + requiredDegree + ", jobDescription=" + jobDescription
                + ", companyMail=" + companyMail + ", applyLink=" + applyLink + ", jobLocation=" + jobLocation + "]";
    }

	
}
