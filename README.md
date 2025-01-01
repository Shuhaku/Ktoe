```sqlCREATE TABLE members (    id INT AUTO_INCREMENT PRIMARY KEY,    username VARCHAR(50) NOT NULL UNIQUE,    password VARCHAR(255) NOT NULL,    email VARCHAR(255) NOT NULL UNIQUE,    status TINYINT(1) DEFAULT 1,    is_deleted TINYINT(1) DEFAULT 0,    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP);```