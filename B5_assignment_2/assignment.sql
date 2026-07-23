CREATE table rangers (
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR (50),
    region VARCHAR(50)
)

INSERT INTO rangers (name, region) 
VALUES
('Alice Green', 'Northern Hills'),
('Bob White',  'River Delta' ),
('Carol King', 'Mountain Range' )

SELECT * from rangers

drop table species

CREATE table species(
    species_id SERIAL PRIMARY KEY,
    common_name VARCHAR(50),
    scientific_name VARCHAR(50),
    discovery_date DATE,
    conservation_status VARCHAR(20)
        CHECK (conservation_status IN ('Endangered', 'Vulnerable', 'Historic'))
)

INSERT INTO species (common_name, scientific_name, discovery_date, conservation_status)
VALUES
('Snow Leopard', 'Panthera uncia', '1775-01-01', 'Endangered'),
('Bengal Tiger', 'Panthera tigris tigris', '1758-01-01', 'Endangered'),
('Red Panda', 'Ailurus fulgens', '1825-01-01', 'Vulnerable'),
('Asiatic Elephant', 'Elephas maximus indicus', '1758-01-01', 'Endangered')

SELECT * FROM species

drop table sightings

CREATE table sightings(
    sighting_id SERIAL PRIMARY KEY,
    ranger_id INT REFERENCES rangers(ranger_id),
    species_id INT REFERENCES species(species_id),
    sighting_time TIMESTAMP,
    location VARCHAR(50),
    notes TEXT
)

INSERT INTO sightings (species_id, ranger_id,  location, sighting_time,  notes)
VALUES
(1, 1, 'peak Ridge', '2024-05-10 07:45:00', 'Camera trap image captured'),
(2, 2, 'Bankwood Area', '2024-05-12 16:20:00', 'Juvenile seen'),
(3, 3, 'Bamboo Grove East', '2024-05-15 09:10:00', 'Feeding observed'),
(1, 2, 'Snowfall Pass', '2024-05-18 18:30:00', NULL)

SELECT * FROM sightings

-- Register a new ranger with provided data with name = 'Derek Fox' and region = 'Coastal Plains'
INSERT INTO rangers (name, region) VALUES('Derek Fox', 'Coastal Plains')

-- Count unique species ever sighted.
SELECT count(DISTINCT(species_id)) from sightings

-- Find all sightings where the location includes "Pass"
SELECT * FROM sightings WHERE location LIKE '%Pass'

-- List each ranger's name and their total number of sightings.
SELECT name, count(*) as total_sightings FROM rangers r
JOIN sightings s ON r.ranger_id = s.ranger_id
GROUP BY name

-- List species that have never been sighted.
SELECT common_name FROM species s
LEFT JOIN sightings t ON s.species_id = t.species_id
WHERE t.species_id IS NULL

-- Show the most recent 2 sightings.
SELECT common_name, sighting_time, name FROM sightings s
JOIN rangers r ON s.ranger_id = r.ranger_id
JOIN species sp ON s.species_id = sp.species_id
ORDER BY sighting_time DESC LIMIT 2


-- Update all species discovered before year 1800 to have status 'Historic

UPDATE species set conservation_status = 'Historic'
WHERE EXTRACT(year FROM discovery_date) < 1800


-- Label each sighting's time of day as 'Morning', 'Afternoon', or 'Evening'.

SELECT sighting_id,  
CASE 
    WHEN EXTRACT(HOUR from sighting_time)< 12 THEN 'Morning'
    WHEN EXTRACT(HOUR from sighting_time)< 17 THEN 'Afternoon'
    ELSE  'Evening'
END as time_of_day FROM sightings


-- Delete rangers who have never sighted any species**
DELETE FROM rangers 
WHERE ranger_id NOT IN (
SELECT ranger_id from sightings
)

