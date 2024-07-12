USE infraDB;


DELIMITER //

CREATE TRIGGER `arcata_insert`
AFTER INSERT ON `arcata_source`
FOR EACH ROW 
BEGIN 
    INSERT INTO `arcata_cdc` (
        `action`,
        original_id,
        aug_id,
        country_name,
        country_code,
        map_coordinates,
        url,
        region_name,
        region_code,
        title,
        description,
        status,
        stages,
        published_date,
        procurement_method,
        budget,
        currency,
        buyer,
        sector,
        subsector,
        location,
        last_modified_dt
    )
    VALUES (
        'insert',
        NEW.original_id,
        NEW.aug_id,
        NEW.country_name,
        NEW.country_code,
        NEW.map_coordinates,
        NEW.url,
        NEW.region_name,
        NEW.region_code,
        NEW.title,
        NEW.description,
        NEW.status,
        NEW.stages,
        NEW.published_date,
        NEW.procurement_method,
        NEW.budget,
        NEW.currency,
        NEW.buyer,
        NEW.sector,
        NEW.subsector,
        NEW.location,
        NOW()
    );
END;
//
DELIMITER ;
