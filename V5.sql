--yangi table yaratish
CREATE TABLE AEROPORT (
    id INT PRIMARY KEY,
    samolyot_turi VARCHAR(255),
    uchish_sanasi DATE,
    uchish_shaxri VARCHAR(255),
    qonish_shaxri VARCHAR(255),
    uchish_soati TIME
);

--tablega ma'lumot qo'shish
INSERT INTO AEROPORT (id, samolyot_turi, uchish_sanasi, uchish_shaxri, qonish_shaxri, uchish_soati)
VALUES
    (1, 'Flight1', '2024-03-01', 'Toshkent', 'London', '12:00:00'),
    (2, 'Flight2', '2024-08-02', 'New York', 'Toshkent', '15:00:00'),
    (3, 'Flight3', '2024-05-03', 'Paris', 'Toshkent', '14:30:00'),
    (4, 'Flight4', '2024-07-04', 'Toshkent', 'Istanbul', '10:00:00'),
    (5, 'Flight5', '2024-09-05', 'Moscow', 'Toshkent', '16:00:00'),
    (6, 'Flight6', '2024-03-06', 'Toshkent', 'Dubai', '11:30:00'),
    (7, 'Flight7', '2024-04-07', 'Berlin', 'Toshkent', '13:45:00'),
    (8, 'Flight8', '2024-01-08', 'Toshkent', 'Tokyo', '09:30:00'),
    (9, 'Flight9', '2024-11-09', 'Madrid', 'Toshkent', '17:30:00'),
    (10, 'Flight10', '2024-06-10', 'Toshkent', 'Dublin', '14:00:00');

-- yoz oylarida uchadigan samolyotlar haqida ma’lumot
SELECT * FROM AEROPORT 
WHERE MONTH(uchish_sanasi) = 6
OR MONTH(uchish_sanasi) = 7
OR MONTH(uchish_sanasi) = 8
ORDER BY uchish_sanasi;

-- 2 va 3 oralig’idagi va qo’nish shaxri ‘Toshkent’ bo’lgan samolyotlarni jadvaldan o’chirib tashla
DELETE FROM AEROPORT 
WHERE qonish_shaxri = 'Toshkent' AND HOUR(uchish_soati) 
BETWEEN 14 AND 15;

--jadvalni ko'rish
SELECT *FROM AEROPORT; 
