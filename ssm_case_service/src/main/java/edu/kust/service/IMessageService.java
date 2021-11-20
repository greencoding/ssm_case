package edu.kust.service;

import edu.kust.domain.Message;

import java.util.List;

public interface IMessageService {

    void save(Message message);

    List<Message> findAll();
}
