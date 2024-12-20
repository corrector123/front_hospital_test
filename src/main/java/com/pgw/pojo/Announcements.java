package com.pgw.pojo;

public class Announcements {
    private String announcementId;
    private String title;
    private String content;
    private String creationTime;
    private String creator;
    private String type;
    private String avatar;

    public String getAnnouncementId() {
        return announcementId;
    }

    public void setAnnouncementId(String announcementId) {
        this.announcementId = announcementId;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCreationTime() {
        return creationTime;
    }

    public void setCreationTime(String creationTime) {
        this.creationTime = creationTime;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator;
    }

    public Announcements() {
    }

    //update
    public Announcements(String announcementId, String title, String content, String creationTime, String creator, String type) {
        this.announcementId = announcementId;
        this.title = title;
        this.content = content;
        this.creationTime = creationTime;
        this.creator = creator;
        this.type = type;
    }

    //getList
    public Announcements(String title, String content, String creationTime, String creator, String type) {
        this.title = title;
        this.content = content;
        this.creationTime = creationTime;
        this.creator = creator;
        this.type = type;
    }


    @Override
    public String toString() {
        return "Announcements{" +
                "announcementId=" + announcementId +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", createTime='" + creationTime + '\'' +
                ", creator='" + creator + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}
