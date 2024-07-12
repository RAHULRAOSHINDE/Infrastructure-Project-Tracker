USE infraDB;

CREATE TABLE IF NOT EXISTS fairfield_cdc (
    action VARCHAR(50),
    original_id VARCHAR(50) ,
    aug_id CHAR(50),
    country_name VARCHAR(100),
    country_code CHAR(20),
    map_coordinates VARCHAR(100),
    url VARCHAR(500),
    region_name VARCHAR(100),
    region_code VARCHAR(10),
    title VARCHAR(500),
    description TEXT,
    status TEXT,
    stages VARCHAR(100),
    published_date VARCHAR(50),
    procurement_method VARCHAR(100),
    budget VARCHAR(50),
    currency CHAR(10),
    buyer VARCHAR(255),
    sector VARCHAR(255),
    subsector VARCHAR(255),
    location VARCHAR(255),
    last_modified_dt timestamp,
    PRIMARY KEY (`aug_id`)
) ENGINE = InnoDB;



