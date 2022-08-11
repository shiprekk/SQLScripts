USE mysql_basics;

source mini_twitter/user_data.sql;

SELECT 
	username,
    COUNT(follower_id) as number_of_followees
	FROM users
    LEFT JOIN follows
    ON users.id = follows.follower_id
    GROUP BY users.id
    ORDER BY number_of_followees DESC;
    
    SELECT 
        username,
        COUNT(followee_id) as number_of_followers
        FROM users
        JOIN follows
        ON users.id = follows.followee_id
        GROUP BY followee_id
    	ORDER BY number_of_followers DESC;
