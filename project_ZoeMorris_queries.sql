use bon_appetit;

-- QUERIES --

-- Average ingredient count for each type of recipe

select type_name, round(sum(num_ingredients) / count(title), 2) as 'avg_recipe_count'
from webpage join type using (type_id)
group by type_name;

--  Times between a recipe being published on the website and the video being published

select datediff(v.date_published, w.date_published) as 'days_between_developed_and_video'
from webpage w join video v on (webpage_id = recipe_id)
where webpage_id = recipe_id;

-- What percent of video hosts developed the recipe made in the video?

select concat(round((select count(distinct host_id)
from chef c join webpage w using (chef_id)
join video v on (chef_id = host_id)
where w.chef_id = v.host_id) / count(video_id) * 100, 2), '%') as 'pct_chef_developed'
from video;

-- What percent of the top recipes were developed by POC? How many of the videos were hosted by POC?

select concat(round(count(w.title) / (select count(*) from webpage) * 100, 2), '%') as 'pct_made_by_poc'
from webpage w join chef c using (chef_id)
where c.poc = true
union
select concat(round(count(v.title) / (select count(*) from video) * 100, 2), '%')
from video v join chef c on (host_id = chef_id)
where c.poc = true;

-- What percent of recipes developed by POC in the top 67 were made into videos

select concat(round(count(v.title) / (select count(*)
		from webpage w join chef c using (chef_id)
		where c.poc = true) * 100, 2), '%') as 'pct_poc_developed_recipes'
from video v join chef c on (host_id = chef_id)
where c.poc = true;