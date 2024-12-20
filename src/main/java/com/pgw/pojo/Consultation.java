package com.pgw.pojo;

public class Consultation {
    private Integer consultationId;
    private Integer patientId;
    private Integer doctorId;
    private String  consultationTime;
    private Integer isHospitalRegistered;
    private Integer isHospitalized;
    private String medicalAdviceCase;
    private Integer appointmentId;

    private Doctors doctors;

    public Doctors getDoctors() {
        return doctors;
    }

    public void setDoctors(Doctors doctors) {
        this.doctors = doctors;
    }

    public Integer getConsultationId() {
        return consultationId;
    }

    public void setConsultationId(Integer consultationId) {
        this.consultationId = consultationId;
    }

    public Integer getPatientId() {
        return patientId;
    }

    public void setPatientId(Integer patientId) {
        this.patientId = patientId;
    }

    public Integer getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(Integer doctorId) {
        this.doctorId = doctorId;
    }

    public String getConsultationTime() {
        return consultationTime;
    }

    public void setConsultationTime(String consultationTime) {
        this.consultationTime = consultationTime;
    }

    public Integer getIsHospitalRegistered() {
        return isHospitalRegistered;
    }

    public void setIsHospitalRegistered(Integer isHospitalRegistered) {
        this.isHospitalRegistered = isHospitalRegistered;
    }

    public Integer getIsHospitalized() {
        return isHospitalized;
    }

    public void setIsHospitalized(Integer isHospitalized) {
        this.isHospitalized = isHospitalized;
    }

    public String getMedicalAdviceCase() {
        return medicalAdviceCase;
    }

    public void setMedicalAdviceCase(String medicalAdviceCase) {
        this.medicalAdviceCase = medicalAdviceCase;
    }

    public Integer getAppointmentId() {
        return appointmentId;
    }

    public void setAppointmentId(Integer appointmentId) {
        this.appointmentId = appointmentId;
    }
}
