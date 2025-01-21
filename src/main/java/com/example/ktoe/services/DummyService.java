package com.example.ktoe.services;

import com.example.ktoe.mappers.DummyMapper;
import com.example.ktoe.models.Dummy;
import org.slf4j.Logger;
import org.springframework.stereotype.Service;

import org.slf4j.LoggerFactory;

@Service
public class DummyService {
    private static final Logger logger = LoggerFactory.getLogger(DummyService.class);
    private final DummyMapper dummyMapper;

    public DummyService(DummyMapper dummyMapper) {
        this.dummyMapper = dummyMapper;
    }

    public boolean createDummy(Dummy dummy) {
        logger.info("createMember dummy: {}", dummy.toString());
        return dummyMapper.insertDummy(dummy) > 0;
    }
}
