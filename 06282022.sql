select *
from patient;

INSERT INTO `patient`
(`pat_id`,
`first_name`,
`last_name`,
`birth_date`)
VALUES
('A12345','Sam','Jones','1/5/1990');


ALTER TABLE `encounter` 
DROP FOREIGN KEY `fk_encounter_patient1`;
ALTER TABLE `encounter` 
DROP INDEX `fk_encounter_patient1_idx` ;
;

INSERT INTO `patient`
(`pat_id`,`first_name`,`last_name`,`birth_date`)
VALUES
('A12345','Sam','Jones','1990-01-05');

ALTER TABLE `patient` 
CHANGE COLUMN `pat_id` `pat_id` VARCHAR(45) NOT NULL ;
