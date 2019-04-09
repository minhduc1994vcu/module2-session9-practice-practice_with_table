CREATE DATABASE mydata;
CREATE TABLE sinhvien
(
    ma_sv     INT(9)   NOT NULL AUTO_INCREMENT,
    ten_sv    TEXT(50) NOT NULL,
    nam_sinh INT    NOT NULL,
    CONSTRAINT id_sv PRIMARY KEY (ma_sv)
);
INSERT INTO sinhvien VALUES (1,'nguyen thi a', 1996);
INSERT INTO sinhvien VALUES (2,'nguyen thi B', 1997);
ALTER TABLE sinhvien ADD diem INT(2) DEFAULT 5;

ALTER TABLE sinhvien ADD gioi_tinh BOOLEAN AFTER ten_sv;
UPDATE sinhvien SET gioi_tinh = TRUE where ma_sv = 1;
UPDATE sinhvien SET gioi_tinh = FALSE where ma_sv = 2 ;
UPDATE sinhvien SET ten_sv = 'nguyen van A' WHERE ma_sv = 1;

SELECT * FROM sinhvien;
ALTER TABLE sinhvien RENAME TO sinh_vien;
SELECT * FROM sinh_vien;
DROP DATABASE mydata;