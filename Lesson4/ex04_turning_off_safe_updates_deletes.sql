-- WARNING: turning off safe updates or deletes can lead 
--          to a disaster where a query could irreverasbly
--          lose important data (by either changing or deleting)
--
--          always consider preferring alternative options
--          such as listing the relevant primary keys
--          or make sure to always turn safe update
--          after performing the unsafe operations
--
--          double check the unsafe operation to make
--          sure there are no mistakes


--  check the variable status/value:
select @@sql_safe_updates;
show variables like 'sql_safe_updates';

-- the above query can be used to backup the original value

set @@SQL_SAFE_UPDATES = 0; -- turns off safe update/delete
-- perform the unsafe UPDATE or DELETE HERE
set @@SQL_SAFE_UPDATES = 1; -- turn safe update/delete back on

set @OLD_SAFE_UPDATES = @@sql_safe_updates;
select @OLD_SAFE_UPDATES;

set @OLD_SAFE_UPDATES = @@sql_safe_updates;  -- backup safe updates flag value
set @@SQL_SAFE_UPDATES = 0;                  -- turns off safe update/delete
-- perform the unsafe UPDATE or DELETE HERE
set @@SQL_SAFE_UPDATES = @OLD_SAFE_UPDATES;


