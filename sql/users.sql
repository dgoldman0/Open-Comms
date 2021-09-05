-- Users have a location and it costs energy to move from one location to another.
-- I'm not sure if movement will be immediate it, gradual, or all at once the end of a duration. Probably immediate.
-- Energy will cost some currency (maybe I'll use mana)
-- That energy will also be needed to "launch" your ship (basically register your account as active). How much I'm not sure. Maybe the average of 5 mana pack's worth.

-- It'll be interesting because the greater the distance you want to transmit, the more energy you'll need. Users that are far away from everyone would have to spend more to transmit, but I think
-- I can set the system up to randomly place a user near SOME group while still making it really hard for people to just create new accounts to evade people moving away
-- even beyond the cost to create.

USE OpenComms;

DELIMITER $$

CREATE TABLE Users(id INT UNSIGNED NOT NULL auto_increment, location POINT NOT NULL SRID 4326, energy INT UNSIGNED NOT NULL DEFAULT 0);

-- ST_Distance_Spheroid is likely going to be very useful for calculating the distance between points, in which case SRID won't matter.
-- Because this distance is calculated based on the given spheroid, I can just increase the radius of the spheroid as the population grows

DELIMITER ;
