USE OpenComms;

DELIMITER $$

CREATE TABLE LogEntries(id INT UNSIGNED NOT NULL auto_increment, collection_id INT UNSIGNED NOT NULL, entry_date DATE NOT NULL DEFAULT VALUE getdate(), VARCHAR(3000) next_entry_id INT UNSIGNED, PRIMARY KEY (id));
DELIMITER ;