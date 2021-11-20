package edu.kust.service.impl;

import edu.kust.dao.IMessage;
import edu.kust.domain.Message;
import edu.kust.service.IMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("messageService")
public class MessageServiceImpl implements IMessageService {

    @Autowired
    private IMessage messageDao;

    @Override
    public void save(Message message) {
        messageDao.save(message);
    }

    @Override
    public List<Message> findAll() {
        return messageDao.findAll();
    }
}
