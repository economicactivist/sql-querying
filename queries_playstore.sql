-- Comments in SQL Start with dash-dash --

-- Find the ID and app name for all apps that were last updated on August 01, 2018.
-- Count the number of apps in each category, e.g. “Family | 1972”.
-- Find the top 5 most-reviewed apps and the number of reviews for each.
-- Find the app that has the most reviews with a rating greater than equal to 4.8.
-- Find the average rating for each category ordered by the highest rated to lowest rated.
-- Find the name, price, and rating of the most expensive app with a rating that’s less than 3.
-- Find all apps with a min install not exceeding 50, that have a rating. Order your results by highest rated first.
-- Find the names of all apps that are rated less than 3 with at least 10000 reviews.
-- Find the top 10 most-reviewed apps that cost between 10 cents and a dollar.
-- Find the most out of date app. Hint: You don’t need to do it this way, but it’s possible to do with a subquery: 
-- http://www.postgresqltutorial.com/postgresql-max-function/
-- Find the most expensive app (the query is very similar to #11).
-- Count all the reviews in the Google Play Store.
-- Find all the categories that have more than 300 apps in them.
-- Find the app that has the highest proportion of min_installs to reviews, among apps that have been installed at 
-- least 100,000 times. Display the name of the app along with the number of reviews, the min_installs, and the proportion.

-- select app_name from analytics where id=1880;  
-- select id, app_name from analytics where last_updated='2018-08-01';
-- select count(*) from analytics group by category;
-- select app_name, reviews from analytics order by reviews desc limit 5;
-- select app_name, reviews, rating from analytics where rating>=4.8 order by reviews desc limit 1;
-- select category, avg(rating) as avg_rating from analytics group by category order by avg_rating desc;
-- select app_name, price, rating from analytics where rating<3 order by price desc limit 1;
-- select * from analytics where min_installs <=50 and rating is not null order by rating desc; 
-- Find the names of all apps that are rated less than 3 with at least 10000 reviews.
-- select * from analytics where rating < 3 and reviews >= 10000;
-- select * from analytics where price between 0.10 and 1.00; 
-- select  * from analytics where last_updated = (select min(last_updated) from analytics);
-- select  * from analytics where price = (select max(price) from analytics);
-- select category, count(category) as cc from analytics group by category having count(category)>300 order by cc desc;
--select count(reviews), min_installs, min_installs/count(reviews) as proportion from analytics where min_installs>1000000 
--   group by min_installs order by proportion desc limit 1; 

