DROP TABLE IF EXISTS `bulk_tbl`;

CREATE TABLE
IF NOT EXISTS `bulk_tbl`
(
 `id`               INT
(20) AUTO_INCREMENT,
 `group_id`         TEXT NOT NULL,
 `text`             TEXT NOT NULL,
 `created_at`       Datetime DEFAULT NULL,
 `updated_at`       Datetime DEFAULT NULL,
    PRIMARY KEY
(`id`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


GRANT ALL PRIVILEGES ON bulk_db.* TO bulk_user@localhost
IDENTIFIED BY 'pw';