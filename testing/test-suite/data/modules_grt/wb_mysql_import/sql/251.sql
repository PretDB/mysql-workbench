DELIMITER //

CREATE
DEFINER = 'user'@'hostname'
EVENT
IF NOT EXISTS
event4
ON SCHEDULE AT ADDTIME('1997-12-31 23:59:59.999999', '1 1:1:1.000002') + INTERVAL 1 DAY
ON COMPLETION PRESERVE
DISABLE
COMMENT 'comment1'
DO
BEGIN
INSERT INTO table1(id) values (1);
END //

DELIMITER ;
;