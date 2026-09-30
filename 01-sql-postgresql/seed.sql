-- Sample data for Clinic Management System

INSERT INTO patients (name, phone)
VALUES
    ('Ali', '09120000000'),
    ('Sara Ahmadi', '09121111111'),
    ('Reza Mohammadi', '09122222222');
INSERT INTO appointments (patient_id, appointment_date, treatment)
VALUES
    (1, '2026-10-05 10:00:00', 'Botox'),
    (3, '2026-10-02 11:00:00', 'Filler'),
    (4, '2026-10-10 14:30:00', 'Botox');
INSERT INTO appointments (patient_id, appointment_date, treatment)
VALUES
    (
        (SELECT id FROM patients WHERE name = 'Ali'),
        '2026-10-05 10:00:00',
        'Botox'
    ),
    (
        (SELECT id FROM patients WHERE name = 'Sara Ahmadi'),
        '2026-10-02 11:00:00',
        'Filler'
    ),
    (
        (SELECT id FROM patients WHERE name = 'Reza Mohammadi'),
        '2026-10-10 14:30:00',
        'Botox'
    );

INSERT INTO follow_ups (appointment_id, follow_up_date, status, notes)
VALUES
    (
        (
            SELECT id
            FROM appointments
            WHERE treatment = 'Botox'
              AND appointment_date = '2026-10-05 10:00:00'
        ),
        '2026-10-12',
        'pending',
        'پیگیری نتیجه درمان'
    );