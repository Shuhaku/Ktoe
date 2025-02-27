USE ktoe;

CREATE TABLE difficulty_levels (
    level_id INT AUTO_INCREMENT PRIMARY KEY,
    level_name VARCHAR(50) NOT NULL UNIQUE
);