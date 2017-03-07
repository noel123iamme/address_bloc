def remove_duplicates
	# ORM
	titles = Post.all.distinct

	# SQL
	sql = 'select distinct * from post'
end

def filter_records
	# SQL
	sql = "select * from post where title like '%code%' and title != 'code red'"

	# ORM
	posts = Post.all.like("title", "%code%").not_equal("title", "Code Red")
end

def sort_by(column, asc_dec)
	# SQL
	sql = 'select * from post order by title'

	# ORM
	posts = Post.all.sort_by("title")
end

def select_limit(num_of_recs)
	# SQL
	sql = 'select top 100 * from post'

	# ORM
	posts = Post.all.first(100)
end

def aggregate_group_by
	# SQL
	sql = "SELECT user_id, count(title) AS '# of Posts' FROM post GROUP BY user_id"

	# ORM
	posts = Post.all.count_by("title", "user_id")

end

def joins
	# SQL 
	sql = "SELECT post.title, count(comment.body) AS '# of comments'
			FROM post JOIN comment ON post.id = comment.post_id
			GROUP BY post.title;"

	# ORM
	post = Post.joins("Comment").count_by("comment.body", "post.title")
end







