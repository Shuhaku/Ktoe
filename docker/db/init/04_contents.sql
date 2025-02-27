USE ktoe;

CREATE TABLE contents (
    content_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    korean_title VARCHAR(255) NOT NULL,
    type_id INT NOT NULL,
    difficulty_id INT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (type_id) REFERENCES content_types(type_id) ON DELETE CASCADE,
    FOREIGN KEY (difficulty_id) REFERENCES difficulty_levels(level_id) ON DELETE CASCADE
);