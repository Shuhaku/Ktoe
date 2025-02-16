package com.example.ktoe.mappers;

import com.example.ktoe.models.Content;
import com.example.ktoe.models.Paragraph;
import com.example.ktoe.models.Sentence;
import com.example.ktoe.models.Token;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ContentMapper {
    Content getContentById(@Param("contentId") int contentId);

    List<Paragraph> getParagraphsByContentId(@Param("contentId") int contentId);

    List<Sentence> getSentencesByParagraphId(@Param("paragraphId") int paragraphId);

    List<Token> getTokensBySentenceId(@Param("sentenceId") int sentenceId);

    int getParagraphCountByContentId(@Param("contentId") int contentId);

    int getSentenceCountByContentId(@Param("contentId") int contentId);

    int getTokenCountByContentId(@Param("contentId") int contentId);
}