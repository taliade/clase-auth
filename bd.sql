
-- Accede a MySQL
SELECT user, host FROM mysql.user;

-- Comprueba si el usuario existe:
SELECT user, host FROM mysql.user;

--- Si el usuario no existe, créalo y otorga los permisos necesarios:

CREATE USER 'mydatabaseuser'@'localhost' IDENTIFIED BY 'mysecurepassword';
GRANT ALL PRIVILEGES ON mydatabase.* TO 'mydatabaseuser'@'localhost';
FLUSH PRIVILEGES;

--- Si el usuario ya existe pero no tiene los permisos adecuados, otórgales los permisos:

GRANT ALL PRIVILEGES ON mydatabase.* TO 'mydatabaseuser'@'localhost';
FLUSH PRIVILEGES;

-- 
create database mydatabase;
use mydatabase;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    googleId VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

SHOW TABLES;
DESCRIBE users;

