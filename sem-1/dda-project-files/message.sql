
-- Data for the MESSAGE table

INSERT INTO [message]
            (msg_id,
             msg_text,
             time_stamp,
             [to],
             cc,
             bcc)
VALUES      (1,
             'Fee of amount INR 100 is due by 2022-01-15',
             '2022-01-01',
             'student1@email.com;student2@email.com',
             'finance@email.com',
             'admin@email.com'),
            (2,
             'Semester 2 exam starts on 2022-06-01',
             '2022-04-01',
             'students-2021@email.com',
             'exams@email.com',
             'admin@email.com'),
            (3,
             'Semester 1 Results are out',
             '2022-04-01',
             'students-2021@email.com',
             'exams@email.com',
             'admin@email.com'),
            (4,
             'No classes on 2022-10-02',
             '2022-10-01',
             'students-all@email.com;faculties-all@email.com',
             'exams@email.com',
             'admin@email.com'),
            (5,
             'Admissions for 2023 have started',
             '2022-12-01',
             'faculties-all@email.com',
             'admissions@email.com',
             'admin@email.com'),
            (6,
             'Hands on Training Programme on CNC Programming and Machining',
             '2022-10-21',
             'students-all@email.com',
             'coe@email.com',
             'admin@email.com'),
            (7,
             'One-day Workshop on "Entrepreneurship & Business opportunities in 3D Printing Industries"',
             '2022-09-09',
             'students-all@email.com',
             'coe@email.com',
             'admin@email.com'),
            (8,
             'Up-Skilling program in IoT Technologies in collaboration with C-DAC',
             '2022-10-25',
             'students-all@email.com',
             'coe@email.com',
             'admin@email.com'),
            (9,
             'College Fest on 2022-12-20',
             '2022-10-01',
             'students-all@email.com;faculties-all@email.com',
             'admin@email.com',
             'admin@email.com'),
            (10,
             'Farewell for 2020 Batch',
             '2023-02-01',
             'students-2023@email.com;faculties-all@email.com',
             'coe@email.com',
             'admin@email.com')
;
