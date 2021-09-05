-- Long term not fleet option: logs
-- Should be able to make changes to posts, but all changes should be tracked, including the time at which they were made.
-- Syndicating a post will let your followers see it, but they will see the version when you syndicated it, with a message that a newer version is available.
-- Message chains: I don't think it makes sense to be able to change the parent of a post, but maybe

-- Short term fleet option: transmissions
-- Transmissions are brief, and don't last long. 
-- Might as well make it fun and give everyone coordinates, and maybe create different communication regions. Hell, we can turn this into a whole game!
-- A person will have to be in range to syndicate the transmission, and the new source will be the new users' location. The idea here is that people are literally following other people around.
USE OpenComms;

DELIMITER $$

CREATE TABLE TransmissionCollections(id INT UNSIGNED NOT NULL auto_increment, owner_id INT UNSIGNED NOT NULL);
CREATE TABLE LogEntries(id INT UNSIGNED NOT NULL auto_increment, collection_id INT UNSIGNED NOT NULL, entry_date DATE NOT NULL DEFAULT VALUE getdate(), VARCHAR(3000) next_entry_id INT UNSIGNED, PRIMARY KEY (id));
CREATE TABLE ReceivedTransmissions(id INT UNSIGNED NOT NULL auto_increment, received_by INT UNSIGNED NOT NULL, expires_on DATE NOT NULL, user_origin INT UNSIGNED NOT NULL, sent_at DATE NOT NULL DEFAULT gatedate(), read BOOL NOT NULL DEFAULT FALSE, PRIMARY KEY(id));
DELIMITER ;