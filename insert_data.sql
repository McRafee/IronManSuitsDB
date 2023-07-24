-- insert_data.sql
-- Replace 'your_directory/iron_man_suits.csv' with the correct file path.
-- Replace 'your_username' and 'your_password' with your actual Oracle credentials.

SET COLSEP ,
SET FEEDBACK OFF
SET HEADING OFF
SET PAGESIZE 0
SET LINESIZE 1000

-- Connect to Oracle using SQL*Plus without needing a client
sqlplus -S 'your_username/your_password' <<EOF
-- Execute the create_table.sql script to create the table
@create_table.sql

-- Load data from the CSV file into the table
-- Adjust the format based on your CSV file structure
-- Replace 'your_directory/iron_man_suits.csv' with the correct file path
INSERT INTO iron_man_suits (suit_name, characteristics, movie_appearance)
    SELECT * FROM external (
        'your_directory/iron_man_suits.csv'
        -- Adjust the format based on your CSV file structure
        USING (
            suit_name CHAR(100),
            characteristics CHAR(100),
            movie_appearance CHAR(100)
        )
    ) REJECT LIMIT UNLIMITED;

-- Commit the changes to the table
COMMIT;

-- Exit SQL*Plus
EXIT;
EOF
