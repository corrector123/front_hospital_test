package com.pgw.pojo;

public class Doctors {
    private Integer doctorId;
    private String jobNumber;
    private String passWord;
    private String name;
    private String avatar;
    private String phone;
    private String email;
    private String introduction;
    private String registrationFee;
    private String entryDate;
    private Integer departmentId;
    private Integer professionalTitleId;

    private Departments department;
    private ProfessionalTitles professionalTitle;

    public Departments getDepartment() {
        return department;
    }

    public void setDepartment(Departments department) {
        this.department = department;
    }

    public ProfessionalTitles getProfessionalTitle() {
        return professionalTitle;
    }

    public void setProfessionalTitle(ProfessionalTitles professionalTitle) {
        this.professionalTitle = professionalTitle;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getRegistrationFee() {
        return registrationFee;
    }

    public void setRegistrationFee(String registrationFee) {
        this.registrationFee = registrationFee;
    }

    public String getEntryDate() {
        return entryDate;
    }

    public void setEntryDate(String entryDate) {
        this.entryDate = entryDate;
    }

    public Integer getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }

    public Integer getProfessionalTitleId() {
        return professionalTitleId;
    }

    public void setProfessionalTitleId(Integer professionalTitleId) {
        this.professionalTitleId = professionalTitleId;
    }

    public Integer getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(Integer doctorId) {
        this.doctorId = doctorId;
    }

    public String getJobNumber() {
        return jobNumber;
    }

    public void setJobNumber(String jobNumber) {
        this.jobNumber = jobNumber;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
