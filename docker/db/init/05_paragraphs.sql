USE ktoe;

CREATE TABLE paragraphs (
    paragraph_id INT AUTO_INCREMENT PRIMARY KEY,
    content_id INT NOT NULL,
    paragraph_order INT NOT NULL,
    korean_paragraph TEXT NOT NULL,
    english_paragraph TEXT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (content_id) REFERENCES contents(content_id) ON DELETE CASCADE
);