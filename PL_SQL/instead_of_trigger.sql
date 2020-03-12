--Example 1

CREATE TABLE trainer
  ( 
    full_name VARCHAR2(20)
  );

CREATE TABLE subject
  ( 
    subject_name VARCHAR2(15)
  );

INSERT INTO trainer VALUES ('Abhi');
INSERT INTO subject VALUES ('Oracle');

CREATE VIEW coaching AS
SELECT full_name, subject_name FROM trainer, subject;

--Instead of Trigger
CREATE OR REPLACE TRIGGER tr_Io_Insert
INSTEAD OF INSERT ON coaching
FOR EACH ROW
BEGIN
  INSERT INTO trainer (full_name) VALUES (:new.full_name);
  INSERT INTO subject (subject_name) VALUES (:new.subject_name);
END;

--Instead of Update
CREATE OR REPLACE TRIGGER io_update
INSTEAD OF UPDATE ON coaching
FOR EACH ROW
BEGIN
  UPDATE trainer SET FULL_NAME = :new.full_name 
  WHERE FULL_NAME = :old.full_name;
  UPDATE subject SET subject_NAME = :new.subject_name 
  WHERE subject_NAME = :old.subject_name;
END;


--Instead of Delete
CREATE OR REPLACE TRIGGER io_delete
INSTEAD OF DELETE ON coaching
FOR EACH ROW
BEGIN
  DELETE FROM trainer WHERE FULL_NAME = :old.FULL_NAME;
  DELETE FROM subject WHERE SUBJECT_NAME= :old.SUBJECT_NAME;
END;
