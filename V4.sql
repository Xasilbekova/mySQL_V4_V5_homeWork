--data baza yaratish
CREATE DATABASE NajotTalim_db;

--data bazaga ulanish
USE NajotTalim_db;

--table yasash
CREATE TABLE users (
    na_me VARCHAR(64),
    surname VARCHAR(64),
    age INTEGER,
    username VARCHAR(64),
    pass_word VARCHAR(64),
    gender TEXT
);

CREATE TABLE IF NOT EXISTS users (  
    id INT NOT NULL AUTO_INCREMENT,  
    na_me VARCHAR(64) NOT NULL,  
    surname VARCHAR(64) NOT NULL,  
    age INT NOT NULL,  
    username VARCHAR(64) NOT NULL,
    pass_word VARCHAR(64) NOT NULL,
    gender TEXT,
    PRIMARY KEY (id)  
); 

--tableni 30ta foydalanuvchi bilan to'ldirish
INSERT INTO users (na_me, surname, age, username, pass_word, gender) VALUES
('Gayrat', 'Bahromov', 31, 'Bahramov_G', '1234abc', 'MALE'),
('Murodjon', 'Javlonov', 21, 'Javlonov_M', '456j', 'MALE'),
('Zulfiya', 'Bahromova', 22, 'Bahromova_Z', '89765h', 'FEMALE'),
('Muqaddam', 'Latipova', 23, 'Latipova_M', '456789_ret', 'FEMALE'),
('Hamiddulla', 'Kamilov', 25, 'Kamilov_H', '65473_uy', 'MALE'),
('Jackie', 'Chan', 40, 'Chan_J', '98756', 'MALE'),
('Aziz', 'Shakirov', 16, 'Shakirov_A', '99876545', 'MALE'),
('Toxir', 'Jalilov', 22, 'Jalilov_J', '56454lk', 'MALE'),
('Gulom', 'Haydar', 28, 'Haydar_G', '8764rfgd', 'MALE'),
('Asal', 'Vohidova', 22, 'Vohidova_A', '8765p', 'FEMALE'),
('Qobil', 'Hasanov', 32, 'Hasanov_Q', '4354a', 'MALE'),
('Jan-Clod', 'van Damm', 63, 'van_D', '8765p', 'MALE'),
('Botir', 'Zokirov', 19, 'Zokirov_B', '98756', 'MALE'),
('Malika', 'Yuldasheva', 235, 'Yuldasheva_M', '7644', 'FEMALE'),
('Juma', 'Kamilov', 16, 'Kamilov_J', 'jjh65', 'MALE'),
('Aziza', 'Zokirova', 20, 'Zakirova_A', 'lkfhgd78', 'FEMALE'),
('Jumagul', 'Bozorova', 27, 'Bozorova_J', 'jhgf98', 'FEMALE'),
('Aziz', 'Azizov', 24, 'Azizov_A', 'Aziz32', 'MALE'),
('Angela', 'Merkel', 69, 'Markel_A', 'Angela45', 'FEMALE'),
('Qudrat', 'Rustamov', 28, 'Rustamov_Q', 'Qudrat98', 'MALE'),
('Shirin', 'Ohidova', 32, 'Sirin_A', '8765p', 'FEMALE'),
('Ali', 'Husanov', 38, 'Husanov_Q', '4354a', 'MALE'),
('Olim', 'van Damm', 53, 'van_D', '8765p', 'MALE'),
('Komil', 'Zokirov', 39, 'Zokirov_B', '98756', 'MALE'),
('Aliya', 'Yuldasheva', 35, 'Yuldasheva_M', '7644', 'FEMALE'),
('Sabohat', 'Kamilov', 66, 'Kamilov_J', 'jjh65', 'MALE'),
('Gulnoza', 'Zokirova', 25, 'Zakirova_A', 'lkfhgd78', 'FEMALE'),
('Dono', 'Bozorova', 22, 'Bozorova_J', 'jhgf98', 'FEMALE'),
('Abror', 'Azizov', 29, 'Azizov_A', 'Aziz32', 'MALE'),
('Muborak', 'Merkel', 17, 'Markel_A', 'Angela45', 'FEMALE'),
('Nodirjon', 'Quvvatov', 28, 'Quvvatov_N', 'Nodirjon78', 'MALE');

--xamma tableni ko'rish
SELECT *FROM users; 

--To'ldirilgan ma'lumotlar ichidan yoshi 15 va 30 oralig'idagilari
SELECT * FROM users 
WHERE age BETWEEN 15 AND 30;

--Yoshi 17 ga teng userlar soni nechta ekanligi
SELECT COUNT(*) 
FROM users 
WHERE age = 17;

--Ismi A harfi bilan boshlangan userlar
SELECT * FROM users 
WHERE na_me LIKE 'A%';

 --Ayol userlarni ekranga chiqarish
SELECT * FROM users 
WHERE gender = 'female';

--Ismlari Abror, Ali, Gulnoza nomli userlarni ekranga chiqarish
SELECT * FROM users 
WHERE na_me IN ('Abror', 'Ali', 'Gulnoza');

--Ayol userlarni ochirish
DELETE FROM users 
WHERE gender = 'female';

--Yoshi eng katta erkak userni ekranga chiqarish
SELECT * FROM users 
WHERE gender = 'male' 
ORDER BY age DESC LIMIT 1;

--Abror, Gulnoza ismli userlarni passwordlarini qwer1234 ga o'zgartirish
UPDATE users 
SET pass_word = 'qwer1234' 
WHERE na_me IN ('Abror', 'Gulnoza');
