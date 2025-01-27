package com.example.ktoe.models;

import java.time.LocalDateTime;
import java.util.Objects;

public class Content {
    private int contentId;
    private String title;
    private String koreanTitle;
    private int typeId;
    private int difficultyId;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    public Content() {
    }

    public Content(int contentId, String title, String koreanTitle, int typeId, int difficultyId, LocalDateTime createdAt, LocalDateTime updatedAt) {
        this.contentId = contentId;
        this.title = title;
        this.koreanTitle = koreanTitle;
        this.typeId = typeId;
        this.difficultyId = difficultyId;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    public int getContentId() {
        return contentId;
    }

    public void setContentId(int contentId) {
        this.contentId = contentId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getKoreanTitle() {
        return koreanTitle;
    }

    public void setKoreanTitle(String koreanTitle) {
        this.koreanTitle = koreanTitle;
    }

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public int getDifficultyId() {
        return difficultyId;
    }

    public void setDifficultyId(int difficultyId) {
        this.difficultyId = difficultyId;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(LocalDateTime updatedAt) {
        this.updatedAt = updatedAt;
    }

    @Override
    public String toString() {
        return "Content{" +
            "contentId=" + contentId +
            ", title='" + title + '\'' +
            ", koreanTitle='" + koreanTitle + '\'' +
            ", typeId=" + typeId +
            ", difficultyId=" + difficultyId +
            ", createdAt=" + createdAt +
            ", updatedAt=" + updatedAt +
            '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Content content = (Content) o;
        return contentId == content.contentId &&
            typeId == content.typeId &&
            difficultyId == content.difficultyId &&
            Objects.equals(title, content.title) &&
            Objects.equals(koreanTitle, content.koreanTitle) &&
            Objects.equals(createdAt, content.createdAt) &&
            Objects.equals(updatedAt, content.updatedAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(contentId, title, koreanTitle, typeId, difficultyId, createdAt, updatedAt);
    }
}