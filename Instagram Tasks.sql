/*Task-1 - Loyal user Reward*/
select * FROM users 
order by created_at asc LIMIT 5;

/*Task-2 Inactive user engagement*/
select user_name from users
left join posts on users.id = posts.user_id
where posts.id is null;

/*Task-3 Contest winner declaration*/
select user_name,likes.photo_id,posts.image_url,count(likes.user_id) as total
from likes
left join posts on likes.photo_id=posts.id
left join users on posts.user_id=users.id
group by likes.photo_id,user_name
order by total desc limit 5;

/*Task-4 Hashtag Research*/
select tags.tag_name,count(*) as total from photo_tags
left join tags on photo_tags.tag_id=tags.id
group by tags.id,tag_name
order by total desc;

/*Task-5 Ad Campaign Launch*/
select dayname(created_at) as day,count(*) as total from users
group by day
order by total desc limit 5;