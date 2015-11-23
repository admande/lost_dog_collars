# YOUR SQL CODE GOES HERE

#1 Display collars for which there is a known owner
SELECT lost_dog_collars.id AS dog_collar_id, lost_dog_collars.dog_name, dog_owners.name AS owner_name
FROM lost_dog_collars INNER JOIN dog_owners ON lost_dog_collars.dog_name = dog_owners.dog_name;

#2 Display collars for which there is no known owner
SELECT lost_dog_collars.id AS dog_collar_id, lost_dog_collars.dog_name, dog_owners.name AS owner_name
FROM lost_dog_collars LEFT OUTER JOIN dog_owners ON lost_dog_collars.dog_name = dog_owners.dog_name
WHERE dog_owners.dog_name IS NULL;

#3 Display all collars in our possession; if owner exists, display that also
SELECT lost_dog_collars.id AS dog_collar_id, lost_dog_collars.dog_name, dog_owners.name AS owner_name
FROM lost_dog_collars LEFT OUTER JOIN dog_owners ON lost_dog_collars.dog_name = dog_owners.dog_name;

#4 Display all dog owners we know about; if collar is in our possession, display that also
SELECT dog_owners.id AS owner_id, dog_owners.name AS owner_name, lost_dog_collars.dog_name
FROM dog_owners LEFT OUTER JOIN lost_dog_collars ON lost_dog_collars.dog_name = dog_owners.dog_name;
