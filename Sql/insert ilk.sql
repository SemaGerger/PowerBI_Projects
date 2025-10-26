INSERT INTO users (user_id, username, full_name, email, role)
VALUES
(1, 'mali', 'Mert Ali', 'mali@example.com', 'Admin'),
(2, 'ayse', 'Ayþe Yýlmaz', 'ayse@example.com', 'ÝK'),
(3, 'mehmet', 'Mehmet Can', 'mehmet@example.com', 'Müdür'),
(4, 'fatma', 'Fatma Demir', 'fatma@example.com', 'ÝK'),
(5, 'ali', 'Ali Vural', 'ali@example.com', 'Admin');

INSERT INTO positions (position_id, position_name)
VALUES
(1, 'Yazýlým Mühendisi'),
(2, 'ÝK Uzmaný'),
(3, 'Finans Müdürü'),
(4, 'Proje Yöneticisi'),
(5, 'Ýþ Analisti');


INSERT INTO departments (department_id, department_name)
VALUES
(1, 'BT'),
(2, 'Ýnsan Kaynaklarý'),
(3, 'Finans'),
(4, 'Operasyon'),
(5, 'Ýþ Geliþtirme');


INSERT INTO employees (employee_id, employee_no, position_id, department_id, hire_date, employment_type, employment_status)
VALUES
(1, 'EMP001', 1, 1, '2023-01-15', 'Tam Zamanlý', 'Aktif'),
(2, 'EMP002', 2, 2, '2022-06-01', 'Yarý Zamanlý', 'Aktif'),
(3, 'EMP003', 3, 3, '2021-03-20', 'Tam Zamanlý', 'Aktif'),
(4, 'EMP004', 4, 4, '2020-08-10', 'Sözleþmeli', 'Aktif'),
(5, 'EMP005', 5, 5, '2024-02-05', 'Tam Zamanlý', 'Aktif');


INSERT INTO employee_personal (employee_id, first_name, last_name, gender, birth_date, birth_place, marital_status, national_no, passport_no, blood_type, photo)
VALUES
(1, 'Mert', 'Ali', 'Erkek', '1990-05-12', 'Ýstanbul', 'Bekar', '12345678901', 'A1234567', '0+', '/images/mert_ali.jpg'),
(2, 'Ayþe', 'Yýlmaz', 'Kadýn', '1988-11-23', 'Ankara', 'Evli', '23456789012', 'B7654321', 'A+', '/images/ayse_yilmaz.jpg'),
(3, 'Mehmet', 'Can', 'Erkek', '1985-02-10', 'Ýzmir', 'Evli', '34567890123', 'C2345678', 'B+', '/images/mehmet_can.jpg'),
(4, 'Fatma', 'Demir', 'Kadýn', '1992-07-18', 'Bursa', 'Bekar', '45678901234', 'D3456789', 'AB+', '/images/fatma_demir.jpg'),
(5, 'Ali', 'Vural', 'Erkek', '1987-09-05', 'Antalya', 'Bekar', '56789012345', 'E4567890', '0-', '/images/ali_vural.jpg');

INSERT INTO salaries (salary_id, employee_id, start_date, end_date, net_salary, created_by)
VALUES
(1, 1, '2025-01-01', '2025-12-31', 8000.00, 1),
(2, 2, '2025-01-01', '2025-12-31', 5000.00, 1),
(3, 3, '2025-01-01', '2025-12-31', 9000.00, 1),
(4, 4, '2025-01-01', '2025-12-31', 10000.00, 1),
(5, 5, '2025-01-01', '2025-12-31', 7000.00, 1);


INSERT INTO salary_incomes (income_id, salary_id, income_type, amount, created_by)
VALUES
(1, 1, 'MAAS', 7000.00, 1),
(2, 1, 'BONUS', 1000.00, 1),
(3, 2, 'MAAS', 5000.00, 1),
(4, 3, 'MAAS', 8500.00, 1),
(5, 3, 'FAZLA MESAI', 500.00, 1),
(6, 4, 'MAAS', 9500.00, 1),
(7, 4, 'BONUS', 500.00, 1),
(8, 5, 'MAAS', 7000.00, 1);


INSERT INTO salary_deductions (deduction_id, salary_id, deduction_type, amount, created_by)
VALUES
(1, 1, 'VERGI', 1500.00, 1),
(2, 1, 'SGK', 500.00, 1),
(3, 2, 'VERGI', 1000.00, 1),
(4, 3, 'VERGI', 1800.00, 1),
(5, 3, 'SGK', 600.00, 1),
(6, 4, 'VERGI', 2000.00, 1),
(7, 5, 'VERGI', 1400.00, 1);


INSERT INTO leaves (leave_id, employee_id, leave_type, start_date, end_date, status, created_by)
VALUES
(1, 1, 'Yýllýk', '2025-07-01', '2025-07-10', 'Onaylandý', 1),
(2, 2, 'Hastalýk', '2025-09-05', '2025-09-07', 'Beklemede', 2),
(3, 3, 'Yýllýk', '2025-08-15', '2025-08-20', 'Onaylandý', 1),
(4, 4, 'Hastalýk', '2025-06-01', '2025-06-03', 'Reddedildi', 3),
(5, 5, 'Yýllýk', '2025-12-20', '2025-12-31', 'Beklemede', 4);


INSERT INTO device_usage (device_id, employee_id, device_type, device_serial, usage_start, usage_end, created_by)
VALUES
(1, 1, 'Laptop', 'LAP123456', '2025-01-01', NULL, 1),
(2, 2, 'Telefon', 'PHN987654', '2025-03-01', '2025-10-01', 2),
(3, 3, 'Laptop', 'LAP789123', '2025-02-01', NULL, 1),
(4, 4, 'Tablet', 'TAB456789', '2025-04-01', NULL, 3),
(5, 5, 'Telefon', 'PHN321654', '2025-05-01', NULL, 4);
