package com.pgw.service;

import com.github.pagehelper.PageInfo;
import com.pgw.pojo.Announcements;

import java.util.List;

public interface AnnouncementService {

    boolean deleteById(String id);

    boolean AddAnnounce(Announcements announcements);

    Announcements getAnnounceById(String id);

    boolean updateAnnounce(Announcements announcements);

    PageInfo getAnnounceListPage(String page, Announcements announcements);

    List<Announcements> getSliderAnnounceList();
}