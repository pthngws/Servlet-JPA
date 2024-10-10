package com.example.jpa.Service;

import com.example.jpa.Entity.Video;

import java.util.List;

public interface IVideoService {
    void insert(Video video);

    void delete(Video video) throws Exception;

    void update(Video video);

    Video findById(String id);

    List<Video> findAll();
    List<Video> findListById(String id);
}