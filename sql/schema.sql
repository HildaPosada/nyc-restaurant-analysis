-- NYC Restaurant Analysis Database Schema
-- Created: September 2025
-- Purpose: Store restaurant data collected from OpenTable via Octoparse

-- Create restaurants table
CREATE TABLE restaurants (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    cuisine_type TEXT,
    rating_text TEXT,
    rating_numeric REAL,
    location TEXT,
    scraped_date TEXT DEFAULT (datetime('now'))
);

-- Create indexes for better query performance
CREATE INDEX idx_restaurants_rating ON restaurants(rating_numeric);
CREATE INDEX idx_restaurants_cuisine ON restaurants(cuisine_type);
CREATE INDEX idx_restaurants_location ON restaurants(location);

-- Insert sample data from OpenTable scraping
INSERT INTO restaurants (name, cuisine_type, rating_text, rating_numeric, location, scraped_date) VALUES 
('La Pizza & La Pasta - Eataly NYC Downtown', 'Pizzeria', 'Exceptional', 5.0, 'Financial District, NY', '2025-09-26 19:52:00'),
('The Odeon', 'French', 'Exceptional', 5.0, 'TriBeCa, NY', '2025-09-26 19:52:00'),
('Beauty & Essex- New York', 'Unspecified', 'Exceptional', 5.0, 'Lower East Side, NY', '2025-09-26 19:52:00'),
('Blu on the Hudson', 'Contemporary American', 'Exceptional', 5.0, 'Weehawken, NY', '2025-09-26 19:52:00'),
('Kahlo Restaurant', 'Mexican', 'Exceptional', 5.0, 'Chelsea, NY', '2025-09-26 19:52:00'),
('Bocca Di Bacco (Chelsea - 20th St.)', 'Italian', 'Exceptional', 5.0, 'Chelsea, NY', '2025-09-26 19:52:00'),
('Keepers', 'Unspecified', 'Awesome', 4.5, 'Harrison, NY', '2025-09-26 19:52:00'),
('TAO Downtown - New York', 'Fusion / Eclectic', 'Exceptional', 5.0, 'Chelsea, NY', '2025-09-26 19:52:00'),
('The Smith- East Village', 'Contemporary American', 'Exceptional', 5.0, 'East Village, NY', '2025-09-26 19:52:00'),
('Blue Ribbon Sushi Bar & Grill', 'Seafood', 'Exceptional', 5.0, 'Theater District, NY', '2025-09-26 19:52:00'),
('Gjelina - New York', 'Italian', 'Exceptional', 5.0, 'East Village, NY', '2025-09-26 19:52:00'),
('Brooklyn Chop House- Times Square', 'Contemporary American', 'Awesome', 4.5, 'Theater District, NY', '2025-09-26 19:52:00'),
('Bar Primi Bowery', 'Korean', 'Awesome', 4.5, 'NoMad, NY', '2025-09-26 19:52:00'),
('Pera Soho', 'Tapas / Small Plates', 'Awesome', 4.5, 'Newark, NY', '2025-09-26 19:52:00'),
('Little Owl', 'Mediterranean', 'Exceptional', 5.0, 'Hell''s Kitchen, NY', '2025-09-26 19:52:00'),
('Temple Court', 'Bar / Lounge / Bottle Service', 'Exceptional', 5.0, 'Midtown West, NY', '2025-09-26 19:52:00'),
('Clinton St. Baking Company & Restaurant', 'American', 'Exceptional', 5.0, 'Lower East Side, NY', '2025-09-26 19:52:00');

-- Verify data insertion
SELECT COUNT(*) as total_restaurants FROM restaurants;

-- Data quality checks
SELECT 
    COUNT(*) as total_records,
    COUNT(DISTINCT name) as unique_restaurants,
    AVG(rating_numeric) as average_rating,
    MIN(rating_numeric) as min_rating,
    MAX(rating_numeric) as max_rating
FROM restaurants;