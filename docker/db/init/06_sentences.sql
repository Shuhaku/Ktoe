USE ktoe;

CREATE TABLE sentences (
    sentence_id INT AUTO_INCREMENT PRIMARY KEY,
    paragraph_id INT NOT NULL,
    sentence_order INT NOT NULL,
    korean_sentence TEXT NOT NULL,
    english_sentence TEXT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (paragraph_id) REFERENCES paragraphs(paragraph_id) ON DELETE CASCADE
);