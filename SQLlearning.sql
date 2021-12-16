
USE test2;
ALTER TABLE students
ADD CONSTRAINT fk_class_id
FOREIGN KEY (class_id)
REFERENCES classes (id);

ALTER TABLE students
DROP FOREIGN KEY fk_class_id;