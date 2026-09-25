CREATE TABLE Course (
    course_code VARCHAR(20) PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    description TEXT,
    professor VARCHAR(100),
    credits INT NOT NULL
);

CREATE TABLE Prerequisites (
    course_code VARCHAR(20),
    prereq_code VARCHAR(20),
    PRIMARY KEY (course_code, prereq_code),
    FOREIGN KEY (course_code) REFERENCES Course(course_code) ON DELETE CASCADE,
    FOREIGN KEY (prereq_code) REFERENCES Course(course_code) ON DELETE CASCADE
);

INSERT INTO Course (course_code, title, description, professor, credits) VALUES
('DSA201', 'Data Structures and Algorithms', 'Intro to fundamental algorithms.', 'Dr. Alan Turing', 4),
('WEB301', 'Web Technologies', 'Basics of modern web applications.', 'Prof. Tim Berners-Lee', 3),
('SWKM701', 'Semantic Web and Knowledge Management', 'Covers RDF, SPARQL, and KGs.', 'Dr. Emily Chen', 3);

INSERT INTO Prerequisites (course_code, prereq_code) VALUES
('SWKM701', 'DSA201'),
('SWKM701', 'WEB301');
