package com.pgw.pojo;

public class Hospitalization {
    private Integer hospitalizationId;
    private Integer patientId;
    private String roomNumber;
    private Double cost;
    private String paymentStatus;
    private Integer isInsured;
    private String hospitalizationStatus;
    private Integer consultationId;

    public Integer getConsultationId() {
        return consultationId;
    }

    public void setConsultationId(Integer consultationId) {
        this.consultationId = consultationId;
    }

    public Integer getHospitalizationId() {
        return hospitalizationId;
    }

    public void setHospitalizationId(Integer hospitalizationId) {
        this.hospitalizationId = hospitalizationId;
    }

    public Integer getPatientId() {
        return patientId;
    }

    public void setPatientId(Integer patientId) {
        this.patientId = patientId;
    }

    public String getRoomNumber() {
        return roomNumber;
    }

    public void setRoomNumber(String roomNumber) {
        this.roomNumber = roomNumber;
    }

    public Double getCost() {
        return cost;
    }

    public void setCost(Double cost) {
        this.cost = cost;
    }

    public String getPaymentStatus() {
        return paymentStatus;
    }

    public void setPaymentStatus(String paymentStatus) {
        this.paymentStatus = paymentStatus;
    }

    public Integer getIsInsured() {
        return isInsured;
    }

    public void setIsInsured(Integer isInsured) {
        this.isInsured = isInsured;
    }

    public String getHospitalizationStatus() {
        return hospitalizationStatus;
    }

    public void setHospitalizationStatus(String hospitalizationStatus) {
        this.hospitalizationStatus = hospitalizationStatus;
    }
}
