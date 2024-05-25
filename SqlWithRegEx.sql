-- User table contains user_id, name, email.  Writing a sql that only take out valid email address from table
-- Valid email address:
-- The prefix name is a string that may contain letters (upper or lower case), digits, underscore '_', period '.', and/or dash '-'. 
-- The prefix name must start with a letter.
-- The domain is '@xyz.com'.
-- Input: 
-- Users table:
-- +---------+-----------+-------------------------+
-- | user_id | name      | mail                    |
-- +---------+-----------+-------------------------+
-- | 1       | Winston   | winston@xyz.com         |
-- | 2       | Jonathan  | jonathanisgreat         |
-- | 3       | Annabelle | jenny-lau@xyz.com       |
-- | 4       | Sally     | sally.come12@xyz.com    |
-- | 5       | Marwan    | quarz#2020@leetcode.com |
-- | 6       | David     | david69@gmail.com       |
-- | 7       | Shapiro   | .shapo@leetcode.com     |
-- +---------+-----------+-------------------------+
-- Output: 
-- +---------+-----------+-------------------------+
-- | user_id | name      | mail                    |
-- +---------+-----------+-------------------------+
-- | 1       | Winston   | winston@xyz.com         |
-- | 3       | Annabelle | jenny-lau@xyz.com       |
-- | 4       | Sally     | sally.come12@xyz.com    |
-- +---------+-----------+-------------------------+

select user_id, name, mail
from Users
where mail REGEXP '^[a-zA-Z][a-zA-Z0-9\\_\\-\\.]*@xyz.com';

select user_id, name, mail
from Users
where mail REGEXP '^[a-zA-Z][a-zA-Z0-9_\\-.]*@xyz.com';
