package com.example.ktoe.services;

import com.example.ktoe.mappers.ContentMapper;
import com.example.ktoe.models.Content;
import com.example.ktoe.models.Paragraph;
import com.example.ktoe.models.Sentence;
import com.example.ktoe.models.Token;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
public class ContentService {
    private static final Logger logger = LoggerFactory.getLogger(ContentService.class);

    private final ContentMapper contentMapper;
    public ContentService(ContentMapper contentMapper) {
        this.contentMapper = contentMapper;
    }

    public Content getContentById(int contentId) {
        return contentMapper.getContentById(contentId);
    }

    public List<Paragraph> getParagraphsByContentId(int contentId) {
        return contentMapper.getParagraphsByContentId(contentId);
    }

    public List<Sentence> getSentencesByParagraphId(int paragraphId) {
        return contentMapper.getSentencesByParagraphId(paragraphId);
    }

    public List<Token> getTokensBySentenceId(int sentenceId) {
        return contentMapper.getTokensBySentenceId(sentenceId);
    }

    // Paragraph 개수 조회
    public int getParagraphCountByContentId(int contentId) {
        return contentMapper.getParagraphCountByContentId(contentId);
    }

    // Sentence 개수 조회
    public int getSentenceCountByContentId(int contentId) {
        return contentMapper.getSentenceCountByContentId(contentId);
    }

    // Token 개수 조회
    public int getTokenCountByContentId(int contentId) {
        return contentMapper.getTokenCountByContentId(contentId);
    }
}
