WITH avg_weather_state AS (
    SELECT 
        c.country_name, 
        AVG(w.weather_state) AS avg_w
    FROM 
        Weather w
    JOIN 
        Countries c 
    ON 
        w.country_id = c.country_id
    WHERE 
        MONTH(w.day) = 11 
        AND YEAR(w.day) = 2019
    GROUP BY 
        c.country_name
)
SELECT 
    country_name,
    CASE 
        WHEN avg_w <= 15 THEN 'Cold'
        WHEN avg_w >= 25 THEN 'Hot'
        ELSE 'Warm'
    END AS weather_type
FROM 
    avg_weather_state;
