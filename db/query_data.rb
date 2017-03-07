.headers ON
.mode column
.width 20, 15, 30, 30, 20	
SELECT 	email, first_name||" "||last_name as "name", title
		, post.body AS "body", comment.body as "comment"
FROM 	user 
		JOIN post 
		ON post.user_id = user.id
		JOIN comment 
		ON comment.post_id = post.id
ORDER BY last_name, first_name, title;


.width 30, 15	
SELECT post.title, count(comment.body) AS "# of comments"
FROM post JOIN comment ON post.id = comment.post_id
GROUP BY post.title;

