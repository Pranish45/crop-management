Create DATABASE crop_management1;
USE crop_management1;

CREATE TABLE IF NOT EXISTS crops (
    id INT AUTO_INCREMENT PRIMARY KEY,
    crop_name VARCHAR(50) NOT NULL,
    planting_date DATE NOT NULL,
    harvest_date DATE NOT NULL,
    growth_stage VARCHAR(50) NOT NULL,
    pest_control_measures TEXT NOT NULL,
    yield_prediction INT NOT NULL
);

INSERT INTO crops (crop_name, planting_date, harvest_date, growth_stage, pest_control_measures, yield_prediction)
VALUES ('Wheat', '2024-02-01', '2024-08-01', 'Vegetative', 'Neem oil application', 3500);

INSERT INTO crops (crop_name, planting_date, harvest_date, growth_stage, pest_control_measures, yield_prediction)
VALUES 
('Rice', '2023-05-10', '2023-10-10', 'Flowering', 'Crop rotation', 4500),
('Corn', '2023-06-20', '2023-11-20', 'Fruiting', 'Biological pest control', 5200),
('Potato', '2022-07-15', '2022-12-15', 'Maturity', 'Use of organic pesticides', 4100),
('Lettuce', '2024-01-01', '2024-04-01', 'Seedling', 'Chemical pesticides', 2000);

SELECT id, crop_name, planting_date, harvest_date, growth_stage, pest_control_measures, yield_prediction 
FROM crops 
ORDER BY id ASC 
LIMIT 10;

SELECT id, crop_name, planting_date, harvest_date, growth_stage, pest_control_measures, yield_prediction 
FROM crops 
ORDER BY id ASC;

DELETE FROM crops WHERE id = 5;

UPDATE crops 
SET crop_name = 'Soybean', yield_prediction = 4800 
WHERE id = 3;