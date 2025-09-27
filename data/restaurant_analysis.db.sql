-- Go to https://sqliteonline.com/
-- Click "File" > "New Database"
-- Copy and paste these commands:

-- Create the restaurants table
CREATE TABLE restaurants (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    cuisine_type TEXT,
    rating_text TEXT,
    rating_numeric REAL,
    location TEXT,
    scraped_date TEXT
);

-- Insert your OpenTable restaurant data
INSERT INTO restaurants (name, cuisine_type, rating_text, rating_numeric, location, scraped_date) VALUES ('La Pizza & La Pasta - Eataly NYC Downtown', 'Pizzeria', 'Exceptional', 5.0, 'Financial District, NY', '2025-09-26 19:52:00');
INSERT INTO restaurants (name, cuisine_type, rating_text, rating_numeric, location, scraped_date) VALUES ('The Odeon', 'French', 'Exceptional', 5.0, 'TriBeCa, NY', '2025-09-26 19:52:00');
INSERT INTO restaurants (name, cuisine_type, rating_text, rating_numeric, location, scraped_date) VALUES ('Beauty & Essex- New York', 'Unspecified', 'Exceptional', 5.0, 'Lower East Side, NY', '2025-09-26 19:52:00');
INSERT INTO restaurants (name, cuisine_type, rating_text, rating_numeric, location, scraped_date) VALUES ('Blu on the Hudson', 'Contemporary American', 'Exceptional', 5.0, 'Weehawken, NY', '2025-09-26 19:52:00');
INSERT INTO restaurants (name, cuisine_type, rating_text, rating_numeric, location, scraped_date) VALUES ('Kahlo Restaurant', 'Mexican', 'Exceptional', 5.0, 'Chelsea, NY', '2025-09-26 19:52:00');
INSERT INTO restaurants (name, cuisine_type, rating_text, rating_numeric, location, scraped_date) VALUES ('Bocca Di Bacco (Chelsea - 20th St.)', 'Italian', 'Exceptional', 5.0, 'Chelsea, NY', '2025-09-26 19:52:00');
INSERT INTO restaurants (name, cuisine_type, rating_text, rating_numeric, location, scraped_date) VALUES ('Keepers', 'Unspecified', 'Awesome', 4.5, 'Harrison, NY', '2025-09-26 19:52:00');
INSERT INTO restaurants (name, cuisine_type, rating_text, rating_numeric, location, scraped_date) VALUES ('TAO Downtown - New York', 'Fusion / Eclectic', 'Exceptional', 5.0, 'Chelsea, NY', '2025-09-26 19:52:00');
INSERT INTO restaurants (name, cuisine_type, rating_text, rating_numeric, location, scraped_date) VALUES ('The Smith- East Village', 'Contemporary American', 'Exceptional', 5.0, 'East Village, NY', '2025-09-26 19:52:00');
INSERT INTO restaurants (name, cuisine_type, rating_text, rating_numeric, location, scraped_date) VALUES ('Blue Ribbon Sushi Bar & Grill', 'Seafood', 'Exceptional', 5.0, 'Theater District, NY', '2025-09-26 19:52:00');
INSERT INTO restaurants (name, cuisine_type, rating_text, rating_numeric, location, scraped_date) VALUES ('Gjelina - New York', 'Italian', 'Exceptional', 5.0, 'East Village, NY', '2025-09-26 19:52:00');
INSERT INTO restaurants (name, cuisine_type, rating_text, rating_numeric, location, scraped_date) VALUES ('Brooklyn Chop House- Times Square', 'Contemporary American', 'Awesome', 4.5, 'Theater District, NY', '2025-09-26 19:52:00');
INSERT INTO restaurants (name, cuisine_type, rating_text, rating_numeric, location, scraped_date) VALUES ('Bar Primi Bowery', 'Korean', 'Awesome', 4.5, 'NoMad, NY', '2025-09-26 19:52:00');
INSERT INTO restaurants (name, cuisine_type, rating_text, rating_numeric, location, scraped_date) VALUES ('Pera Soho', 'Tapas / Small Plates', 'Awesome', 4.5, 'Newark, NY', '2025-09-26 19:52:00');
INSERT INTO restaurants (name, cuisine_type, rating_text, rating_numeric, location, scraped_date) VALUES ('Little Owl', 'Mediterranean', 'Exceptional', 5.0, 'Hell''s Kitchen, NY', '2025-09-26 19:52:00');
INSERT INTO restaurants (name, cuisine_type, rating_text, rating_numeric, location, scraped_date) VALUES ('Temple Court', 'Bar / Lounge / Bottle Service', 'Exceptional', 5.0, 'Midtown West, NY', '2025-09-26 19:52:00');
INSERT INTO restaurants (name, cuisine_type, rating_text, rating_numeric, location, scraped_date) VALUES ('Clinton St. Baking Company & Restaurant', 'American', 'Exceptional', 5.0, 'Lower East Side, NY', '2025-09-26 19:52:00');

-- Verify the data was inserted correctly
SELECT COUNT(*) as total_restaurants FROM restaurants;

-- Analyze your data
SELECT 'CUISINE BREAKDOWN' as analysis;
SELECT cuisine_type, COUNT(*) as count 
FROM restaurants 
GROUP BY cuisine_type 
ORDER BY count DESC;

SELECT 'RATING DISTRIBUTION' as analysis;
SELECT rating_text, COUNT(*) as count, AVG(rating_numeric) as avg_numeric
FROM restaurants 
GROUP BY rating_text 
ORDER BY avg_numeric DESC;

SELECT 'TOP NEIGHBORHOODS' as analysis;
SELECT location, COUNT(*) as restaurant_count
FROM restaurants 
GROUP BY location
ORDER BY restaurant_count DESC
LIMIT 5;

SELECT 'HIGHEST RATED RESTAURANTS' as analysis;
SELECT name, cuisine_type, rating_text, location
FROM restaurants 
ORDER BY rating_numeric DESC, name;

-- Export query for Tableau
SELECT 
    name,
    cuisine_type,
    rating_text,
    rating_numeric,
    location,
    scraped_date,
    CASE 
        WHEN rating_numeric >= 5.0 THEN 'Exceptional'
        WHEN rating_numeric >= 4.5 THEN 'Awesome'
        WHEN rating_numeric >= 4.0 THEN 'Very Good'
        WHEN rating_numeric >= 3.5 THEN 'Good'
        ELSE 'Average'
    END as rating_category
FROM restaurants
ORDER BY rating_numeric DESC, name;