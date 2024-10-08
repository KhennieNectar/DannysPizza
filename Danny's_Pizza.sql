DROP SCHEMA IF EXISTS pizza_runner;
CREATE SCHEMA pizza_runner;
use pizza_runner;

DROP TABLE IF EXISTS runners;
CREATE TABLE runners (
  runner_id INTEGER,
  registration_date DATE
);
INSERT INTO runners
  (runner_id, registration_date)
VALUES
  (1, '2021-01-01'),
  (2, '2021-01-03'),
  (3, '2021-01-08'),
  (4, '2021-01-15');


DROP TABLE IF EXISTS customer_orders;
CREATE TABLE customer_orders (
  order_id INTEGER,
  customer_id INTEGER,
  pizza_id INTEGER,
  exclusions VARCHAR(4),
  extras VARCHAR(4),
  order_time TIMESTAMP
);

INSERT INTO customer_orders
  (order_id, customer_id, pizza_id, exclusions, extras, order_time)
VALUES
  ('1', '101', '1', '', '', '2020-01-01 18:05:02'),
  ('2', '101', '1', '', '', '2020-01-01 19:00:52'),
  ('3', '102', '1', '', '', '2020-01-02 23:51:23'),
  ('3', '102', '2', '', NULL, '2020-01-02 23:51:23'),
  ('4', '103', '1', '4', '', '2020-01-04 13:23:46'),
  ('4', '103', '1', '4', '', '2020-01-04 13:23:46'),
  ('4', '103', '2', '4', '', '2020-01-04 13:23:46'),
  ('5', '104', '1', 'null', '1', '2020-01-08 21:00:29'),
  ('6', '101', '2', 'null', 'null', '2020-01-08 21:03:13'),
  ('7', '105', '2', 'null', '1', '2020-01-08 21:20:29'),
  ('8', '102', '1', 'null', 'null', '2020-01-09 23:54:33'),
  ('9', '103', '1', '4', '1, 5', '2020-01-10 11:22:59'),
  ('10', '104', '1', 'null', 'null', '2020-01-11 18:34:49'),
  ('10', '104', '1', '2, 6', '1, 4', '2020-01-11 18:34:49');


DROP TABLE IF EXISTS runner_orders;
CREATE TABLE runner_orders (
  order_id INTEGER,
  runner_id INTEGER,
  pickup_time VARCHAR(19),
  distance VARCHAR(7),
  duration VARCHAR(10),
  cancellation VARCHAR(23)
);

INSERT INTO runner_orders
  (order_id, runner_id, pickup_time, distance, duration, cancellation)
VALUES
  ('1', '1', '2020-01-01 18:15:34', '20km', '32 minutes', ''),
  ('2', '1', '2020-01-01 19:10:54', '20km', '27 minutes', ''),
  ('3', '1', '2020-01-03 00:12:37', '13.4km', '20 mins', NULL),
  ('4', '2', '2020-01-04 13:53:03', '23.4', '40', NULL),
  ('5', '3', '2020-01-08 21:10:57', '10', '15', NULL),
  ('6', '3', 'null', 'null', 'null', 'Restaurant Cancellation'),
  ('7', '2', '2020-01-08 21:30:45', '25km', '25mins', 'null'),
  ('8', '2', '2020-01-10 00:15:02', '23.4 km', '15 minute', 'null'),
  ('9', '2', 'null', 'null', 'null', 'Customer Cancellation'),
  ('10', '1', '2020-01-11 18:50:20', '10km', '10minutes', 'null');


DROP TABLE IF EXISTS pizza_names;
CREATE TABLE pizza_names (
  pizza_id INTEGER,
  pizza_name TEXT
);
INSERT INTO pizza_names
  (pizza_id, pizza_name)
VALUES
  (1, 'Meatlovers'),
  (2, 'Vegetarian');


DROP TABLE IF EXISTS pizza_recipes;
CREATE TABLE pizza_recipes (
  pizza_id INTEGER,
  toppings TEXT
);
INSERT INTO pizza_recipes
  (pizza_id, toppings)
VALUES
  (1, '1, 2, 3, 4, 5, 6, 8, 10'),
  (2, '4, 6, 7, 9, 11, 12');


DROP TABLE IF EXISTS pizza_toppings;
CREATE TABLE pizza_toppings (
  topping_id INTEGER,
  topping_name TEXT
);
INSERT INTO pizza_toppings
  (topping_id, topping_name)
VALUES
  (1, 'Bacon'),
  (2, 'BBQ Sauce'),
  (3, 'Beef'),
  (4, 'Cheese'),
  (5, 'Chicken'),
  (6, 'Mushrooms'),
  (7, 'Onions'),
  (8, 'Pepperoni'),
  (9, 'Peppers'),
  (10, 'Salami'),
  (11, 'Tomatoes'),
  (12, 'Tomato Sauce');

DROP TABLE IF EXISTS runners;
CREATE TABLE runners (
  runner_id INTEGER,
  registration_date DATE
);
INSERT INTO runners
  (runner_id, registration_date)
VALUES
  (1, '2021-01-01'),
  (2, '2021-01-03'),
  (3, '2021-01-08'),
  (4, '2021-01-15');


DROP TABLE IF EXISTS customer_orders;
CREATE TABLE customer_orders (
  order_id INTEGER,
  customer_id INTEGER,
  pizza_id INTEGER,
  exclusions VARCHAR(4),
  extras VARCHAR(4),
  order_time TIMESTAMP
);

INSERT INTO customer_orders
  (order_id, customer_id, pizza_id, exclusions, extras, order_time)
VALUES
  ('1', '101', '1', '', '', '2020-01-01 18:05:02'),
  ('2', '101', '1', '', '', '2020-01-01 19:00:52'),
  ('3', '102', '1', '', '', '2020-01-02 23:51:23'),
  ('3', '102', '2', '', NULL, '2020-01-02 23:51:23'),
  ('4', '103', '1', '4', '', '2020-01-04 13:23:46'),
  ('4', '103', '1', '4', '', '2020-01-04 13:23:46'),
  ('4', '103', '2', '4', '', '2020-01-04 13:23:46'),
  ('5', '104', '1', 'null', '1', '2020-01-08 21:00:29'),
  ('6', '101', '2', 'null', 'null', '2020-01-08 21:03:13'),
  ('7', '105', '2', 'null', '1', '2020-01-08 21:20:29'),
  ('8', '102', '1', 'null', 'null', '2020-01-09 23:54:33'),
  ('9', '103', '1', '4', '1, 5', '2020-01-10 11:22:59'),
  ('10', '104', '1', 'null', 'null', '2020-01-11 18:34:49'),
  ('10', '104', '1', '2, 6', '1, 4', '2020-01-11 18:34:49');


DROP TABLE IF EXISTS runner_orders;
CREATE TABLE runner_orders (
  order_id INTEGER,
  runner_id INTEGER,
  pickup_time VARCHAR(19),
  distance VARCHAR(7),
  duration VARCHAR(10),
  cancellation VARCHAR(23)
);

INSERT INTO runner_orders
  (order_id, runner_id, pickup_time, distance, duration, cancellation)
VALUES
  ('1', '1', '2020-01-01 18:15:34', '20km', '32 minutes', ''),
  ('2', '1', '2020-01-01 19:10:54', '20km', '27 minutes', ''),
  ('3', '1', '2020-01-03 00:12:37', '13.4km', '20 mins', NULL),
  ('4', '2', '2020-01-04 13:53:03', '23.4', '40', NULL),
  ('5', '3', '2020-01-08 21:10:57', '10', '15', NULL),
  ('6', '3', 'null', 'null', 'null', 'Restaurant Cancellation'),
  ('7', '2', '2020-01-08 21:30:45', '25km', '25mins', 'null'),
  ('8', '2', '2020-01-10 00:15:02', '23.4 km', '15 minute', 'null'),
  ('9', '2', 'null', 'null', 'null', 'Customer Cancellation'),
  ('10', '1', '2020-01-11 18:50:20', '10km', '10minutes', 'null');


DROP TABLE IF EXISTS pizza_names;
CREATE TABLE pizza_names (
  pizza_id INTEGER,
  pizza_name TEXT
);
INSERT INTO pizza_names
  (pizza_id, pizza_name)
VALUES
  (1, 'Meatlovers'),
  (2, 'Vegetarian');


DROP TABLE IF EXISTS pizza_recipes;
CREATE TABLE pizza_recipes (
  pizza_id INTEGER,
  toppings TEXT
);
INSERT INTO pizza_recipes
  (pizza_id, toppings)
VALUES
  (1, '1, 2, 3, 4, 5, 6, 8, 10'),
  (2, '4, 6, 7, 9, 11, 12');


DROP TABLE IF EXISTS pizza_toppings;
CREATE TABLE pizza_toppings (
  topping_id INTEGER,
  topping_name TEXT
);
INSERT INTO pizza_toppings
  (topping_id, topping_name)
VALUES
  (1, 'Bacon'),
  (2, 'BBQ Sauce'),
  (3, 'Beef'),
  (4, 'Cheese'),
  (5, 'Chicken'),
  (6, 'Mushrooms'),
  (7, 'Onions'),
  (8, 'Pepperoni'),
  (9, 'Peppers'),
  (10, 'Salami'),
  (11, 'Tomatoes'),
  (12, 'Tomato Sauce');

DROP TABLE IF EXISTS runners;
CREATE TABLE runners (
  runner_id INTEGER,
  registration_date DATE
);
INSERT INTO runners
  (runner_id, registration_date)
VALUES
  (1, '2021-01-01'),
  (2, '2021-01-03'),
  (3, '2021-01-08'),
  (4, '2021-01-15');


DROP TABLE IF EXISTS customer_orders;
CREATE TABLE customer_orders (
  order_id INTEGER,
  customer_id INTEGER,
  pizza_id INTEGER,
  exclusions VARCHAR(4),
  extras VARCHAR(4),
  order_time TIMESTAMP
);

INSERT INTO customer_orders
  (order_id, customer_id, pizza_id, exclusions, extras, order_time)
VALUES
  ('1', '101', '1', '', '', '2020-01-01 18:05:02'),
  ('2', '101', '1', '', '', '2020-01-01 19:00:52'),
  ('3', '102', '1', '', '', '2020-01-02 23:51:23'),
  ('3', '102', '2', '', NULL, '2020-01-02 23:51:23'),
  ('4', '103', '1', '4', '', '2020-01-04 13:23:46'),
  ('4', '103', '1', '4', '', '2020-01-04 13:23:46'),
  ('4', '103', '2', '4', '', '2020-01-04 13:23:46'),
  ('5', '104', '1', 'null', '1', '2020-01-08 21:00:29'),
  ('6', '101', '2', 'null', 'null', '2020-01-08 21:03:13'),
  ('7', '105', '2', 'null', '1', '2020-01-08 21:20:29'),
  ('8', '102', '1', 'null', 'null', '2020-01-09 23:54:33'),
  ('9', '103', '1', '4', '1, 5', '2020-01-10 11:22:59'),
  ('10', '104', '1', 'null', 'null', '2020-01-11 18:34:49'),
  ('10', '104', '1', '2, 6', '1, 4', '2020-01-11 18:34:49');


DROP TABLE IF EXISTS runner_orders;
CREATE TABLE runner_orders (
  order_id INTEGER,
  runner_id INTEGER,
  pickup_time VARCHAR(19),
  distance VARCHAR(7),
  duration VARCHAR(10),
  cancellation VARCHAR(23)
);

INSERT INTO runner_orders
  (order_id, runner_id, pickup_time, distance, duration, cancellation)
VALUES
  ('1', '1', '2020-01-01 18:15:34', '20km', '32 minutes', ''),
  ('2', '1', '2020-01-01 19:10:54', '20km', '27 minutes', ''),
  ('3', '1', '2020-01-03 00:12:37', '13.4km', '20 mins', NULL),
  ('4', '2', '2020-01-04 13:53:03', '23.4', '40', NULL),
  ('5', '3', '2020-01-08 21:10:57', '10', '15', NULL),
  ('6', '3', 'null', 'null', 'null', 'Restaurant Cancellation'),
  ('7', '2', '2020-01-08 21:30:45', '25km', '25mins', 'null'),
  ('8', '2', '2020-01-10 00:15:02', '23.4 km', '15 minute', 'null'),
  ('9', '2', 'null', 'null', 'null', 'Customer Cancellation'),
  ('10', '1', '2020-01-11 18:50:20', '10km', '10minutes', 'null');


DROP TABLE IF EXISTS pizza_names;
CREATE TABLE pizza_names (
  pizza_id INTEGER,
  pizza_name TEXT
);
INSERT INTO pizza_names
  (pizza_id, pizza_name)
VALUES
  (1, 'Meatlovers'),
  (2, 'Vegetarian');


DROP TABLE IF EXISTS pizza_recipes;
CREATE TABLE pizza_recipes (
  pizza_id INTEGER,
  toppings TEXT
);
INSERT INTO pizza_recipes
  (pizza_id, toppings)
VALUES
  (1, '1, 2, 3, 4, 5, 6, 8, 10'),
  (2, '4, 6, 7, 9, 11, 12');


DROP TABLE IF EXISTS pizza_toppings;
CREATE TABLE pizza_toppings (
  topping_id INTEGER,
  topping_name TEXT
);
INSERT INTO pizza_toppings
  (topping_id, topping_name)
VALUES
  (1, 'Bacon'),
  (2, 'BBQ Sauce'),
  (3, 'Beef'),
  (4, 'Cheese'),
  (5, 'Chicken'),
  (6, 'Mushrooms'),
  (7, 'Onions'),
  (8, 'Pepperoni'),
  (9, 'Peppers'),
  (10, 'Salami'),
  (11, 'Tomatoes'),
  (12, 'Tomato Sauce');

SELECT * FROM pizza_runner.customer_orders;
SELECT * FROM pizza_runner.pizza_names;
SELECT * FROM pizza_runner.pizza_recipes;
SELECT * FROM pizza_runner.pizza_toppings;
SELECT * FROM pizza_runner.runner_orders;
SELECT * FROM pizza_runner.runners;

-- DATA CLEANING

-- Changing all the null and blank to Null in the Customer_orders Table and storing in a temp table
CREATE TEMPORARY TABLE customer_orderst
SELECT DISTINCT order_id, 
       customer_id,
       pizza_id, 
       CASE WHEN exclusions = '' OR exclusions like 'null' OR exclusions like 'NaN' THEN NULL
            ELSE exclusions END AS exclusions,
       CASE WHEN extras = '' OR extras like 'null' OR extras like 'NaN' THEN NULL
            ELSE extras END AS extras, 
       order_time
FROM customer_orders;

SELECT *
FROM customer_orderst;


-- Running_orders TABLE CLEANING and storing in a temp table
CREATE TEMPORARY TABLE running_orderst
SELECT  DISTINCT order_id, 
        runner_id,
        
        -- changing all the null to Null
        CASE 
          WHEN pickup_time LIKE 'null' THEN NULL
          ELSE pickup_time 
          END AS pickup_time,
          
          -- Removing 'km' from distance and changing all the null and blank to Null
        CASE 
          WHEN distance LIKE 'null' THEN NULL
          WHEN distance LIKE '%km' THEN TRIM('km' FROM distance) 
          ELSE distance END AS distance,
          
          -- Removing anything after the numbers from duration and changing all the null and blank to Null
        CASE 
          WHEN duration LIKE 'null' THEN NULL 
          WHEN duration LIKE '%mins' THEN TRIM('mins' FROM duration) 
          WHEN duration LIKE '%minute' THEN TRIM('minute' FROM duration)        
          WHEN duration LIKE '%minutes' THEN TRIM('minutes' FROM duration)       
          ELSE duration END AS duration,
          
          -- Changing all the null and blank to Null
        CASE 
          WHEN cancellation LIKE 'null' OR cancellation LIKE 'NaN' OR cancellation = '' THEN NULL
          ELSE cancellation END AS cancellation
FROM runner_orders;

-- Alter table to modify the field's datatype
ALTER TABLE running_orderst 
MODIFY pickup_time TIMESTAMP,
MODIFY distance FLOAT,
MODIFY duration INT;

SELECT * FROM running_orderst;

-- A. Pizza Metrics

-- 1.How many pizzas were ordered?
SELECT COUNT(*) 
FROM customer_orderst;

-- 2. How many unique customer orders were made?
SELECT COUNT(DISTINCT customer_id) 
FROM customer_orderst;

-- 3. How many successful orders were delivered by each runner?
SELECT runner_id, COUNT(*) orders 
FROM running_orderst
WHERE cancellation IS NULL
GROUP BY runner_id;

-- 4. How many of each type of pizza was delivered?
SELECT pizza_id, COUNT(*) pizza_delivered
FROM customer_orderst
JOIN running_orderst
USING(order_id)
WHERE cancellation IS NULL
GROUP BY pizza_id;

-- 5. How many Vegetarian and Meatlovers were ordered by each customer?
SELECT customer_id, pizza_name, COUNT(*) pizza_type_delivered
FROM customer_orderst
JOIN pizza_names
USING(pizza_id)
GROUP BY customer_id, pizza_name
ORDER BY customer_id;

-- 6. What was the maximum number of pizzas delivered in a single order?
SELECT COUNT(*) number_ordered
FROM customer_orderst
JOIN running_orderst
USING(order_id)
WHERE cancellation IS NULL
GROUP BY order_id
ORDER BY number_ordered DESC
LIMIT 1;

-- 7. For each customer, how many delivered pizzas had at 
-- least 1 change and how many had no changes?
WITH status_table AS (
SELECT order_id,customer_id, pizza_id, exclusions, extras,
CASE 
WHEN exclusions IS NULL AND extras IS NULL 
THEN "No Change"
ELSE "Change"
END status
FROM customer_orderst 
)

SELECT customer_id, status, count(*)
FROM status_table
JOIN running_orderst
USING(order_id)
WHERE cancellation IS NULL
GROUP BY customer_id, status
ORDER BY customer_id;

-- 8. How many pizzas were delivered that had both exclusions and extras?
SELECT count(*) full_change
FROM customer_orderst
JOIN running_orderst
USING(order_id)
WHERE cancellation IS NULL 
	AND exclusions IS NOT NULL AND extras IS NOT NULL;

-- 9. What was the total volume of pizzas ordered for each hour of the day?
SELECT HOUR(order_time) order_hour, COUNT(*) count
FROM customer_orderst
GROUP BY HOUR(order_time)
ORDER BY order_hour;

-- 10. What was the volume of orders for each day of the week?
SELECT DAYNAME(order_time) order_day, COUNT(*) count
FROM customer_orderst
GROUP BY DAYNAME(order_time)
ORDER BY order_day DESC;

-- B. Runner and Customer Experience 

-- 1. How many runners signed up for each 1 week period? (i.e. week starts 2021-01-01)
SELECT WEEK(registration_date) registration_week, COUNT(*) count
FROM runners
GROUP BY WEEK(registration_date)
ORDER BY  registration_week;

-- 2. What was the average time in minutes it took for each runner to arrive at the Pizza Runner HQ to pickup the order?
SELECT runner_id, ROUND(AVG(TIMESTAMPDIFF( MINUTE, order_time, pickup_time))) avg_arrival_time
FROM customer_orderst
JOIN running_orderst
USING(order_id)
GROUP BY runner_id;

-- 3. Is there any relationship between the number of pizzas and 
-- how long the order takes to prepare?
WITH relationship AS (
SELECT order_id, runner_id,COUNT(*) pizza_orders, ROUND(AVG(TIMESTAMPDIFF( MINUTE, order_time, pickup_time))) avg_prep_time
FROM customer_orderst
JOIN running_orderst
USING(order_id)
WHERE duration IS NOT NULL 
GROUP BY order_id, runner_id)

SELECT pizza_orders, ROUND(AVG(avg_prep_time)) avg_prep_time
FROM relationship
GROUP BY pizza_orders;


-- 4. What was the average distance travelled for each customer?
SELECT customer_id, ROUND(AVG(distance),1) avg_distance
FROM customer_orderst
JOIN running_orderst
USING(order_id)
GROUP BY customer_id;

-- 5. What was the difference between the longest and shortest delivery times for all orders?
SELECT max(duration) - min(duration) as delivery_time
FROM customer_orderst
JOIN running_orderst
USING(order_id);

-- 6. What was the average speed for each runner for each delivery and do you notice any trend for these values?
SELECT order_id, runner_id, ROUND((AVG(distance)/AVG(duration)*60),2) avg_speed
FROM customer_orderst
JOIN running_orderst
USING(order_id)
WHERE distance IS NOT NULL 
	AND duration IS NOT NULL
GROUP BY order_id, runner_id;

-- 7. What is the successful delivery percentage for each runner?
SELECT runner_id, 
ROUND((SUM(CASE 
WHEN duration IS NOT NULL THEN 1 
ELSE 0
END)/COUNT(*))*100) total_orders
FROM customer_orderst
JOIN running_orderst
USING(order_id)
GROUP BY runner_id;

-- For readability
WITH orders AS (
SELECT runner_id, COUNT(*) total_orders, SUM(
CASE 
WHEN duration IS NOT NULL THEN 1 
ELSE 0
END) deliveries
FROM customer_orderst
JOIN running_orderst
USING(order_id)
GROUP BY runner_id)

SELECT runner_id, ROUND((deliveries/total_orders)*100) percentage_delivered
FROM orders
GROUP BY runner_id;

	-- C. Ingredient Optimisation
    -- Normalize Pizza Recipe table
DROP TABLE IF EXISTs  pizza_recipest;
CREATE TABLE pizza_recipest(
	pizza_id int,
    toppings int);
INSERT INTO pizza_recipest
(pizza_id, toppings) 
values
(1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(1,6),
(1,8),
(1,10),
(2,4),
(2,6),
(2,7),
(2,9),
(2,11),
(2,12);

		-- putting the values in extras and Exclusions in a single row
DROP TEMPORARY TABLE IF EXISTS temp_extras;
CREATE TEMPORARY TABLE temp_extras AS
SELECT * FROM customer_orderst;

DROP TEMPORARY TABLE IF EXISTS single_items;
CREATE TEMPORARY TABLE single_items AS
SELECT order_id, customer_id, pizza_id, exclusions, extras, order_time, 
       TRIM(SUBSTRING_INDEX(extras, ",", 1)) AS extra_item, TRIM(SUBSTRING_INDEX(exclusions, ",", 1)) AS exclusions_no
FROM temp_extras

UNION 

SELECT order_id, customer_id, pizza_id, exclusions, extras, order_time, 
       TRIM(SUBSTRING_INDEX(extras, ",", -1))  AS extra_item, TRIM(SUBSTRING_INDEX(exclusions, ",", -1)) AS exclusions_no
FROM customer_orderst;


-- 1. What are the standard ingredients for each pizza?
SELECT pizza_name, TRIM(group_concat(" ", topping_name)) as StandardToppings
FROM pizza_names
JOIN pizza_recipest pr
USING(pizza_id)
JOIN pizza_toppings pt
WHERE pr.toppings = pt.topping_id
group by pizza_name;

-- 2. What was the most commonly added extra?

SELECT extra_item, topping_name, COUNT(*) count
FROM single_items s
JOIN pizza_toppings pt
WHERE s.extra_item = pt.topping_id
  AND extra_item IS NOT NULL
GROUP BY extra_item,topping_name;

-- 3. What was the most common exclusion?

SELECT exclusions_no, topping_name, COUNT(*) count
FROM single_items s
JOIN pizza_toppings pt
WHERE s.exclusions_no = pt.topping_id
  AND exclusions_no IS NOT NULL
GROUP BY exclusions_no,topping_name;

-- 4. Generate an order item for each record in the customers_orders table in the format of one of the following:
		-- Meat Lovers
		-- Meat Lovers - Exclude Beef
		-- Meat Lovers - Extra Bacon
		-- Meat Lovers - Exclude Cheese, Bacon - Extra Mushroom, Peppers

WITH pizza_lovers AS (
    SELECT order_id, customer_id, pizza_id, exclusions, extras, order_time,
           TRIM(SUBSTRING_INDEX(extras, ",", 1)) AS extra_item,
           TRIM(SUBSTRING_INDEX(exclusions, ",", 1)) AS exclusions_no,
           CASE WHEN CHAR_LENGTH(extras) > 1 THEN TRIM(SUBSTRING_INDEX(extras, ",", -1)) ELSE NULL END AS extra_item1, 
           CASE WHEN CHAR_LENGTH(exclusions) > 1 THEN TRIM(SUBSTRING_INDEX(exclusions, ",", -1)) ELSE NULL END AS exclusions_no1
    FROM customer_orderst
    GROUP BY order_id, customer_id, pizza_id, exclusions, extras, order_time
)

SELECT 
    l.order_id, 
    l.customer_id, 
    l.pizza_id,
    CASE
        WHEN l.pizza_id = 1 AND l.extras IS NULL AND l.exclusions IS NULL 
            THEN "Meat Lovers"
        WHEN l.pizza_id = 1 AND l.extras IS NULL AND l.exclusions IS NOT NULL 
            THEN CONCAT("Meat Lovers - Exclude ", COALESCE(MAX(pt_excl.topping_name), ''), 
                        IF(l.exclusions_no1 IS NOT NULL, CONCAT(", ", COALESCE(MAX(pt_excl1.topping_name), '')), '')) -- Using Max() caters for ONLY_FULL_GROUP_BY 
        WHEN l.pizza_id = 1 AND l.extras IS NOT NULL AND l.exclusions IS NULL 
            THEN CONCAT("Meat Lovers - Extra ", COALESCE(MAX(pt_extra.topping_name), ''), 
                        IF(l.extra_item1 IS NOT NULL, CONCAT(", ", COALESCE(MAX(pt_extra1.topping_name), '')), ''))
        WHEN l.pizza_id = 1 AND l.extras IS NOT NULL AND l.exclusions IS NOT NULL 
            THEN CONCAT("Meat Lovers - Exclude ", COALESCE(MAX(pt_excl.topping_name), ''), 
                        IF(l.exclusions_no1 IS NOT NULL, CONCAT(", ", COALESCE(MAX(pt_excl1.topping_name), '')), ''), 
                        " - Extra ", COALESCE(MAX(pt_extra.topping_name), ''), 
                        IF(l.extra_item1 IS NOT NULL, CONCAT(", ", COALESCE(MAX(pt_extra1.topping_name), '')), ''))
        ELSE "Vegetarian"
    END AS pizza_love
FROM pizza_lovers l 
LEFT JOIN pizza_toppings pt_extra ON l.extra_item = pt_extra.topping_id -- Get topping for extra_item
LEFT JOIN pizza_toppings pt_extra1 ON l.extra_item1 = pt_extra1.topping_id -- Get topping for extra_item1
LEFT JOIN pizza_toppings pt_excl ON l.exclusions_no = pt_excl.topping_id -- Get topping for exclusions_no
LEFT JOIN pizza_toppings pt_excl1 ON l.exclusions_no1 = pt_excl1.topping_id -- Get topping for exclusions_no1
GROUP BY l.order_id, l.customer_id, l.pizza_id, l.extras, l.exclusions;

       
-- 5. Generate an alphabetically ordered comma separated ingredient list for each pizza order from the customer_orders table and add a 2x in front of any relevant ingredients
		-- For example: "Meat Lovers: 2xBacon, Beef, ... , Salami"
        
WITH lovers AS (
    SELECT order_id, customer_id, pizza_id, exclusions, extras, order_time,
           TRIM(SUBSTRING_INDEX(extras, ",", 1)) AS extra_item,
           TRIM(SUBSTRING_INDEX(exclusions, ",", 1)) AS exclusions_no,
           CASE WHEN CHAR_LENGTH(extras) > 1 THEN TRIM(SUBSTRING_INDEX(extras, ",", -1)) ELSE NULL END AS extra_item1, 
           CASE WHEN CHAR_LENGTH(exclusions) > 1 THEN TRIM(SUBSTRING_INDEX(exclusions, ",", -1)) ELSE NULL END AS exclusions_no1
    FROM customer_orderst
    GROUP BY order_id, customer_id, pizza_id, exclusions, extras, order_time
)

SELECT 
    l.order_id, 
    l.customer_id, 
    l.pizza_id,
    CONCAT(MAX(pizza_name), ": ",
        TRIM(GROUP_CONCAT(
            CASE
                -- Exclude toppings if they are in exclusions
                WHEN l.exclusions IS NOT NULL AND pt.topping_id IN (l.exclusions_no, l.exclusions_no1) THEN NULL

                -- Check if the topping is in extras and also in the pizza recipe
                WHEN l.extras IS NOT NULL AND pt.topping_id IN (l.extra_item, l.extra_item1) THEN CONCAT('2x', pt.topping_name)

                -- Check if the topping is in extras but NOT in the pizza recipe
                WHEN l.extras IS NOT NULL AND pt.topping_id IN (l.extra_item, l.extra_item1) 
                     AND pt.topping_id NOT IN (SELECT pr.toppings FROM pizza_recipest pr WHERE pr.pizza_id = l.pizza_id) 
                THEN pt.topping_name

                -- For any other case (e.g., not included in any condition), do not include the topping
                ELSE pt.topping_name
            END
            ORDER BY pt.topping_name SEPARATOR ', '
        ))
    ) AS love
FROM lovers l 
JOIN pizza_names USING(pizza_id)
JOIN pizza_recipest pr USING(pizza_id)
JOIN pizza_toppings pt ON pr.toppings = pt.topping_id
LEFT JOIN pizza_toppings pt_extra ON l.extra_item = pt_extra.topping_id
LEFT JOIN pizza_toppings pt_extra1 ON l.extra_item1 = pt_extra1.topping_id
LEFT JOIN pizza_toppings pt_excl ON l.exclusions_no = pt_excl.topping_id
LEFT JOIN pizza_toppings pt_excl1 ON l.exclusions_no1 = pt_excl1.topping_id
GROUP BY l.order_id, l.customer_id, l.pizza_id, l.extras, l.exclusions;

        
-- 6. What is the total quantity of each ingredient used in all delivered pizzas sorted by most frequent first?
WITH pizza_lovers AS (
    SELECT order_id, customer_id, pizza_id, exclusions, extras, order_time,
           TRIM(SUBSTRING_INDEX(extras, ",", 1)) AS extra_item,
           TRIM(SUBSTRING_INDEX(exclusions, ",", 1)) AS exclusions_no,
           CASE WHEN CHAR_LENGTH(extras) > 1 THEN TRIM(SUBSTRING_INDEX(extras, ",", -1)) ELSE NULL END AS extra_item1, 
           CASE WHEN CHAR_LENGTH(exclusions) > 1 THEN TRIM(SUBSTRING_INDEX(exclusions, ",", -1)) ELSE NULL END AS exclusions_no1
    FROM customer_orderst
    GROUP BY order_id, customer_id, pizza_id, exclusions, extras, order_time
)

    SELECT 
        pt.topping_name AS ingredient,
        SUM(
            CASE 
                -- Exclude topping if it's in the exclusion list
                WHEN exclusions_no IS NOT NULL AND pr.toppings = exclusions_no THEN 0
                WHEN exclusions_no1 IS NOT NULL AND pr.toppings = exclusions_no1 THEN 0
                
                -- If the topping is an extra, count it as +1 (extra occurrence)
                WHEN extra_item IS NOT NULL AND pr.toppings = extra_item THEN 2
                WHEN extra_item1 IS NOT NULL AND pr.toppings = extra_item1 THEN 2

                -- Otherwise, just count the topping normally
                ELSE 1
            END
        ) AS total_quantity
    FROM pizza_lovers l
    JOIN pizza_recipest pr ON l.pizza_id = pr.pizza_id
    JOIN pizza_toppings pt ON pr.toppings = pt.topping_id
    JOIN running_orderst r ON l.order_id = r.order_id
    WHERE r.cancellation IS NULL  -- Ensure only non-cancelled orders are included
    GROUP BY pt.topping_name
    ORDER BY total_quantity DESC;
    
    -- D. Pricing and Ratings
-- 1. If a Meat Lovers pizza costs $12 and Vegetarian costs $10 and there were no charges for changes - how much money has Pizza Runner made so far if there are no delivery fees?
SELECT SUM(
    CASE 
        WHEN pizza_id = 1 THEN 12  -- Meat Lovers Pizza = $12
        ELSE 10  -- Vegetarian Pizza = $10
    END
) AS total_revenue
FROM customer_orderst c
JOIN running_orderst r ON c.order_id = r.order_id
WHERE r.cancellation IS NULL;

      
-- 2. What if there was an additional $1 charge for any pizza extras? Add cheese is $1 extra
WITH pizza_lovers AS (
    SELECT order_id, customer_id, pizza_id, exclusions, extras, order_time,
           TRIM(SUBSTRING_INDEX(extras, ",", 1)) AS extra_item,
           TRIM(SUBSTRING_INDEX(exclusions, ",", 1)) AS exclusions_no,
           CASE WHEN CHAR_LENGTH(extras) > 1 THEN TRIM(SUBSTRING_INDEX(extras, ",", -1)) ELSE NULL END AS extra_item1, 
           CASE WHEN CHAR_LENGTH(exclusions) > 1 THEN TRIM(SUBSTRING_INDEX(exclusions, ",", -1)) ELSE NULL END AS exclusions_no1,
           CASE WHEN pizza_id = 1 THEN 12 ELSE 10 END AS base_price  -- Meat Lovers = $12, Vegetarian = $10
    FROM customer_orderst
    GROUP BY order_id, customer_id, pizza_id, exclusions, extras, order_time
)

SELECT SUM(
        -- Base pizza price
        base_price +
        
        -- $1 for each extra topping, and an additional $1 if 'Cheese' is included as an extra
        CASE
            WHEN extra_item IS NOT NULL AND (SELECT topping_name FROM pizza_toppings WHERE topping_id = extra_item) = 'Cheese' THEN 2
            WHEN extra_item IS NOT NULL AND (SELECT topping_name FROM pizza_toppings WHERE topping_id = extra_item) <> 'Cheese' THEN 1
            ELSE 0
        END +
        
        CASE
            WHEN extra_item1 IS NOT NULL AND (SELECT topping_name FROM pizza_toppings WHERE topping_id = extra_item1) = 'Cheese' THEN 2
            WHEN extra_item1 IS NOT NULL AND (SELECT topping_name FROM pizza_toppings WHERE topping_id = extra_item1) <> 'Cheese' THEN 1
            ELSE 0
        END
    ) AS total_revenue
FROM pizza_lovers l
JOIN running_orderst r ON l.order_id = r.order_id
WHERE r.cancellation IS NULL;  -- Ensure only non-cancelled orders are included

-- 3. The Pizza Runner team now wants to add an additional ratings system that allows customers to rate their runner, how would you design an additional table for this new dataset - generate a schema for this new table and insert your own data for ratings for each successful customer order between 1 to 5.
DROP TABLE IF EXISTS ratings;
CREATE TABLE ratings (
order_id INT,
ratings INT);

INSERT INTO ratings 
(order_id, ratings)
VALUES
(1,4),
(2,3),
(3,2),
(4,1),
(5,5),
(6,4),
(7,3),
(8,2),
(9,1),
(10,4);

SELECT *
FROM ratings;

-- 4. Using your newly generated table - can you join all of the information together to form a table which has the following information for successful deliveries?
			/*	customer_id
				order_id
				runner_id
				rating
				order_time
				pickup_time
				Time between order and pickup
				Delivery duration
				Average speed
				Total number of pizzas */
                
SELECT c.customer_id, c.order_id, r.runner_id, ratings, order_time, pickup_time,ROUND(AVG(TIMESTAMPDIFF( MINUTE, order_time, pickup_time))) AS avg_prep_time, 
	duration AS delivery_duration, ROUND((AVG(distance)/AVG(duration)*60),2)  AS average_speed, COUNT(*) AS pizzas_count
FROM customer_orderst c
JOIN running_orderst r 
USING (order_id)
JOIN ratings
USING(order_id)
WHERE r.cancellation IS NULL
GROUP BY c.customer_id, c.order_id, r.runner_id, ratings, order_time, pickup_time, duration;


-- 5. If a Meat Lovers pizza was $12 and Vegetarian $10 fixed prices with no cost for extras and each runner is paid $0.30 per kilometre traveled - how much money does Pizza Runner have left over after these deliveries?

SELECT ROUND((SUM(CASE WHEN pizza_id = 1 THEN 12 ELSE 10 END) - (SUM(distance)*0.30)),2) profit
FROM customer_orderst
JOIN running_orderst
USING(order_id);


		-- E. Bonus Questions
-- 1. If Danny wants to expand his range of pizzas - how would this impact the existing data design? Write an INSERT statement to demonstrate what would happen if a new Supreme pizza with all the toppings was added to the Pizza Runner menu?

INSERT INTO pizza_names (pizza_id, pizza_name) VALUES
(3, "Supreme");

INSERT INTO pizza_recipest (pizza_id, toppings)
SELECT 3, topping_id -- inserts multiple rows into the pizza_recipest table, linking the Supreme pizza (ID 3) to every topping available in the pizza_toppings
FROM pizza_toppings;

SELECT * FROM pizza_runner.pizza_names;
SELECT * FROM pizza_recipest