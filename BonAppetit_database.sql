-- DDL

DROP DATABASE IF EXISTS bon_appetit;
CREATE DATABASE bon_appetit;
use bon_appetit;

-- WEBSITE --

DROP TABLE IF EXISTS webpage;
CREATE TABLE webpage (
webpage_id int PRIMARY KEY NOT NULL,
title varchar(100) UNIQUE NOT NULL,
date_published date,
num_ingredients int NOT NULL,
chef_id int,
type_id	int NOT NULL,
constraint made_by foreign key (chef_id) references chef (chef_id),
constraint recipe_type foreign key (type_id) references type (type_id)
);

INSERT INTO webpage values
	(1, 'Basic Bulgogi', '2015-11-01', 11, 1, 2),
    (2, 'Digaag Qumbe (Yogurt-Coconut Chicken)', '2019-08-01', 21, 2, 2),
    (3, 'Spicy Chicken Katsu Sandwiches', '2019-03-01', 13, 1, 2),
    (4, 'Poached Cod in Tomato Curry', '2019-09-01', 12, 3, 2),
    (5, 'Ratatouille Pasta', '2019-08-01', 14, 4, 2),
    (6, 'Cherry Biscuit Cobbler', '2019-06-01', 18, 5, 3),
    (7, 'Crispy Smashed Potatoes with Walnut Dressing', '2018-05-01', 12, 6, 5),
    (8, 'Dry-Rubbed Pork Roast', '2019-12-01', 12, 7, 2),
    (9, 'Grilled Chicken Sandwich with Caesar-ish Dressing', '2018-08-01', 16, 6, 5),
    (10, 'BAs Best Chocolate Chip Cookies', '2019-04-01', 10, 1, 3),
    (11, 'Feel-Better Chicken and Rice Soup', '2019-01-01', 10, 3, 2),
    (12, 'Spicy-Sweet Sambal Pork Noodles', '2019-02-01', 13, 1, 2),
    (13, 'Buttered Tomatoes with Ginger', '2017-08-01', 6, 8, 5),
    (14, 'Pumpkin Bread with Salted Maple Butter', '2018-10-01', 17, 6, 3),
    (15, 'Blistered Green Beans with Garlic', '2019-02-01', 6, 1, 5),
    (16, 'Saag Paneer, but with Feta', '2019-04-01', 15, 9, 2),
    (17, 'Raspberry-Ricotta Cake', '2015-03-01', 10, 10, 3),
    (18, 'Slow-Roast Gochujang Chicken', '2019-09-01', 11, 6, 2),
    (19, 'Pasta al Limone', '2018-09-01', 7, 6, 2),
    (20, 'Kimchi Udon with Scallions', '2016-10-01', 9, 3, 2),
    (21, 'Spaghetti Aglio e Olio with Losts of Kale', '2017-02-01', 8, 11, 2),
    (22, 'Squash and Caramelized Onion Tart', '2018-11-01', 18, 1, 2),
    (23, 'No-Fail Roast Chicken with Lemon and Garlic', '2018-02-01', 6, 5, 2),
    (24, 'Shrimp and Basil Stir-Fry', '2018-08-01', 9, 3, 2),
    (25, 'Slow-Cooked Cherry Tomatoes with Coriander and Rosemary', '2018-09-01', 7, 5, 5),
    (26, 'Sushi Rice with Miso-Caramel Glazed Salmon', '2019-05-01', 15, 1, 2),
    (27, 'Hammy Chickpea Soup', '2019-10-01', 12, 11, 2),
    (28, 'Squash with Yogurt Sauce and Frizzled Onions', '2019-10-01', 12, 12, 5),
    (29, 'The BA Shash Burger', '2015-10-01', 6, 13, 2),
    (30, 'Pan-Seared Scallops with Chorizo and Corn', '2018-09-01', 13, 6, 2),
    (31, 'Expertly Spiced and Glazed Roast Turkey', '2019-11-01', 15, 3, 2),
    (32, 'Gluten-Free Carrot Cake', '2018-04-01', 21, 1, 3),
    (33, 'Chicken and Rice Soup with Garlicky Chile Oil', '2019-02-01', 11, 14, 2),
    (34, 'Spicy Chicken Lettuce Wraps', '2019-06-01', 10, 15, 2),
    (35, 'Universal Marinade', '2019-08-01', 8, 1, 6),
    (36, 'Peanut Rice Noodles and Pork and Collard Greens', '2018-08-01', 12, 1, 2),
    (37, 'Coconut Milk-Braised Chicken Legs', '2018-12-01', 8, 1, 2),
    (38, 'Okonomiyaki-Style Brussels Sprouts', '2019-10-01', 14, 4, 5),
    (39, 'One-Skillet Creamy Chickpeas with Eggs and Prosciutto', '2018-03-01', 12, 3, 2),
    (40, 'Double-Pork Carnitas', '2016-05-01', 6, 16, 2),
    (41, 'Bucatini with Butter-Roasted Tomato Sauce', '2017-11-01', 9, 17, 2),
    (42, 'Sour Cream and Onion Potato Salad', '2019-06-01', 11, 6, 5),
    (43, 'BAs Best Risotto', '2019-03-01', 8, 11, 5),
    (44, 'Easiest Chocolate Birthday Cake', '2019-05-01', 14, 14, 3),
    (45, 'Best-Ever Barbecued Ribs', '2012-07-01', 8, null, 2),
    (46, 'Summer Greens with Mustardy Potatoes and Six-Minute Egg', '2016-05-01', 9, 10, 5),
    (47, 'Sambal Chicken Skewers', '2013-07-01', 7, 10, 2),
    (48, 'Better-than-Takeout Stir-Fried Udon', '2017-03-01', 11, 5, 2),
    (49, 'Hanger Steak with Charred Scallion Sauce', '2018-06-01', 14, 6, 2),
    (50, 'Navy Bean and Escarole Stew with Feta and Olives', '2016-12-01', 16, 5, 2),
    (51, 'Chicken Enchiladas Verdes', '2015-09-01', 20, 16, 2),
    (52, 'Easy Blueberry Cream Scones', '2018-05-01', 10, 5, 3),
    (53, 'No-Nut Granola', '2017-01-01', 8, 11, 1),
    (54, 'Fancy and Beautiful Tomato Salad', '2019-07-01', 12, 4, 5),
    (55, 'Gluten-Free Chocolate-Tahini Brownies', '2017-06-01', 11, 1, 3),
    (56, 'Linguine with Green Olive Sauce and Zesty Breadcrumbs', '2015-06-01', 14, 1, 2),
    (57, 'Buffalo Wing Popcorn', '2015-02-01', 8, 5, 4),
    (58, 'Spicy Kimchi Tofu Stew', '2014-03-01', 11, 10, 2),
    (59, 'Beet and Ricotta Hummus', '2017-03-01', 10, 5, 4),
    (60, 'Spicy Sausage and White Bean Soup', '2016-03-01', 17, 18, 2),
    (61, 'Kouign-Amann', '2014-04-01', 11, 5, 3),
    (62, 'Chewy Molasses Cookies', '2013-12-01', 12, 10, 3),
    (63, 'BAs Best Banana Bread', null, 11, null, 3),
    (64, 'BAs Best Morning Buns', '2017-05-01', 18, 5, 1),
    (65, 'Crispy-Skinned Fish with Herb Sauce', '2018-04-01', 9, 1, 2),
    (66, 'Your Plans Can Wait—Tonight Is For Kielbasa Fried Rice', '2019-10-07', 11, 19, 2),
    (67, 'A Creamy Mushroom Pasta for When Nothing Else Will Do', '2016-02-22', 6, 20, 2);
    
-- VIDEO --

DROP TABLE IF EXISTS video;
CREATE TABLE video (
video_id int PRIMARY KEY NOT NULL,
title varchar(100) UNIQUE NOT NULL,
date_published date NOT NULL,
recipe_id int NOT NULL,	
host_id int,
constraint links_to foreign key (recipe_id) references webpage (webpage_id),
constraint hosted_by foreign key (host_id) references chef (chef_id)
);

INSERT INTO video values
	(1, 'Hawa Makes Somali Stew (Digaag Qumbe) | From the Test Kitchen | Bon Appétit', '2019-08-27', 2, 2),
    (2, 'Chris Makes Spicy Chicken Katsu Sandwiches | From the Test Kitchen | Bon Appétit', '2019-04-10', 3, 1),
    (3, 'Claire Makes Cherry Cobbler | From the Test Kitchen | Bon Appétit', '2019-07-19', 6, 5),
    (4, 'Molly Makes Crispy Smashed Potatoes | From the Test Kitchen | Bon Appétit', '2019-06-14', 7, 6),
    (5, 'Molly Makes a Grilled Chicken Sandwich | From the Test Kitchen | Bon Appétit', '2018-09-28', 9, 6),
    (6, 'Chris Makes Chocolate Chip Cookies | From the Test Kitchen | Bon Appétit', '2019-06-05', 10, 1),
    (7, 'Andy Makes Chicken Soup with Sweet Potatoes | From the Test Kitchen & Healthyish | Bon Appétit', '2019-01-03', 11, 3),
    (8, 'Chris Makes Spicy-Sweet Sambal Pork Noodles | From the Test Kitchen | Bon Appétit', '2019-08-13', 12, 1),
    (9, 'Molly Makes Pumpkin Bread with Maple Butter | From the Test Kitchen | Bon Appétit', '2018-11-27', 14, 6),
    (10, 'Priya Makes Saag Feta | From the Test Kitchen | Bon Appétit', '2019-04-04', 16, 9),
    (11, 'Molly Makes Pasta al Limone | From the Test Kitchen | Bon Appétit', '2018-10-25', 19, 6),
    (12, 'Andy Makes Shrimp and Basil Stir Fry | From the Test Kitchen | Bon Appétit', '2018-09-22', 24, 3),
    (13, 'Carla Makes BA Smashburgers | From the Test Kitchen | Bon Appétit', '2018-06-12', 29, 11),
    (14, 'Molly Makes Scallops with Corn and Chorizo | From the Test Kitchen | Bon Appétit', '2018-09-17', 30, 6),
    (15, 'Chris Makes Carrot Cake | From the Test Kitchen | Bon Appétit', '2019-03-06', 32, 1),
    (16, 'Rick Makes Double-Pork Carnitas and Corn Tortillas | From the Test Kitchen | Bon Appétit', '2018-11-12', 40, 16),
    (17, 'Chris Makes Easy Chocolate Cake | From the Test Kitchen | Bon Appétit', '2019-12-09', 44, 1),
    (18, 'Claire Makes Best-Ever Barbecued Ribs | From the Test Kitchen | Bon Appétit', '2018-06-08', 45, 5),
    (19, 'Molly Makes Hanger Steak with Charred Scallion Sauce | From the Test Kitchen | Bon Appétit', '2018-06-28', 49, 6),
    (20, 'Carla Makes Nut-Free Granola | Bin It to Win It | Bon Appetit', '2017-05-24', 53, 11),
    (21, 'The Sweetest, Saltiest, Buffalo-iest Popcorn Ever', '2016-01-30', 57, null),
    (22, 'Chewy Molasses Cookies: All You Ever Wanted', '2015-12-11', 62, null),
    (23, 'Carla Makes Banana Bread | From the Test Kitchen | Bon Appétit', '2019-06-28', 63, 11),
    (24, 'Claire Makes a More Sophisticated Cinnamon Bun | From the Test Kitchen | Bon Appétit', '2017-05-31', 64, 5);

-- CHEF --

DROP TABLE IF EXISTS chef;
CREATE TABLE chef (
chef_id int PRIMARY KEY NOT NULL,
chef_name varchar(50) NOT NULL,
poc boolean
);

INSERT INTO chef values
	(1, 'Chris Morocco', false),
    (2, 'Hawa Hassan', true),
    (3, 'Andy Baraghani', true),
    (4, 'Sarah Jampel', false),
    (5, 'Claire Saffitz', false),
    (6, 'Molly Baz', false),
    (7, 'Janice Tiefenbach', false), 
    (8, 'Amiel Stanek', false),
    (9, 'Priya Krishna', true),
    (10, 'Alison Roman', false),
    (11, 'Carla-Lalli Music', false),
    (12, 'Sohla El-Waylly', true),
    (13, 'Adam Rapoport', false),
    (14, 'Kat Boytsova', false),
    (15, 'Christina Chaey', true),
    (16, 'Rick Martinez', true),
    (17, 'Dawn Perry', false),
    (18, 'Holly Sander', false),
    (19, 'Alex Delany', false),
    (20, 'Elizabeth Jamie', false);

-- TYPE --

DROP TABLE IF EXISTS type;
CREATE TABLE type (
type_id int PRIMARY KEY NOT NULL,
type_name varchar(50) NOT NULL
);

INSERT INTO type values
	(1, 'breakfast'),
    (2, 'entree'),
    (3, 'dessert'),
    (4, 'snack'),
    (5, 'side'),
    (6, 'other');

