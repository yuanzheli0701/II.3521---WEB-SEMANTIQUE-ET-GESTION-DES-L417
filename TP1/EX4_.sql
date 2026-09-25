CREATE TABLE Course (
    course_code VARCHAR(20) PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    description TEXT,
    professor VARCHAR(100),
    credits INT NOT NULL
);
