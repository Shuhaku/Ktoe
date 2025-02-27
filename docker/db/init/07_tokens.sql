USE ktoe;

CREATE TABLE tokens (
    token_id INT AUTO_INCREMENT PRIMARY KEY,
    sentence_id INT NOT NULL,
    token_order INT NOT NULL,
    korean_token VARCHAR(255) NOT NULL,
    english_token VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (sentence_id) REFERENCES sentences(sentence_id) ON DELETE CASCADE
);